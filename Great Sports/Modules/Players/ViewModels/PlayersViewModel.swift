//
//  PlayersViewModel.swift
//  Great Sports
//
//  Created by Abdurrahman Alboghdady on 08/04/2022.
//

import RxSwift
import RxCocoa

class PlayersViewModel: NSObject {
    
    private let disposeBag = DisposeBag()
    
    var loadingBehavior = BehaviorRelay<Bool>(value: false)
    
    private var playersSubject = PublishSubject<[Player]>()
    var playersObservable: Observable<[Player]> {
        return playersSubject
    }
    
    private var errorMessageSubject = PublishSubject<String>()
    var errorMessageObservable: Observable<String> {
        return errorMessageSubject
    }
    
    func loadPlayers() {
        loadingBehavior.accept(true)
        NetworkRequest.shared.sendRequest(function: .players, model: PlayersResponse.self) { [weak self] response in
            guard let self = self else { return }
            self.loadingBehavior.accept(false)
            guard let players = response.data else {
                print(response.message ?? "")
                self.errorMessageSubject.onNext(response.message ?? "")
                return
            }
            self.playersSubject.onNext(players)
        } failure: { [weak self] error in
            guard let self = self else { return }
            self.loadingBehavior.accept(false)
            print(error)
            self.errorMessageSubject.onNext(error)
        }
    }
    
    func goToPlayerDetails(player: Player) {
        AppCoordinator.shared.goToPlayerDetails(player: player)
    }
}
