//
//  PlayersViewController.swift
//  MVVM-C
//
//  Created by Abdurrahman Alboghdady on 08/04/2022.
//

import UIKit
import RxSwift
import RxCocoa

class PlayersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: PlayersViewModel!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        subscribeToLoading()
        subscribeToErrorMessage()
        
        subscribeToPlayers()
        
        viewModel.loadPlayers()
    }
    
    func setupViews() {
        title = "Players"
        
        tableView.register(UINib(nibName: StoryBoardCells.playerCell.rawValue, bundle: nil), forCellReuseIdentifier: StoryBoardCells.playerCell.rawValue)
        tableView.rx.setDelegate(self).disposed(by: disposeBag)
    }
    
    func subscribeToLoading() {
        viewModel.loadingBehavior.subscribe { (isLoading) in
            self.showLoading(isLoading)
        }.disposed(by: disposeBag)
    }
    
    func subscribeToErrorMessage() {
        viewModel.errorMessageObservable.subscribe { (error) in
            self.showErrorAlert(title: error)
        }.disposed(by: disposeBag)
    }
    
    func subscribeToPlayers() {
        // tableView cells
        viewModel.playersObservable
            .bind(to: tableView.rx.items) { (tableView, row, item) in
                let cell = tableView.dequeueReusableCell(withIdentifier: StoryBoardCells.playerCell.rawValue, for: IndexPath(row: row, section: 0)) as! PlayerCell
                cell.configure(player: item)
                return cell
            }
            .disposed(by: disposeBag)
        // tableview model selected
        tableView.rx.modelSelected(Player.self)
            .subscribe(onNext: { [weak self] item in
                guard let self = self else { return }
                self.viewModel.goToPlayerDetails(player: item)
            })
            .disposed(by: disposeBag)
    }
}

// MARK: - UITableViewDelegate
extension PlayersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
