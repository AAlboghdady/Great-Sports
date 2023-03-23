//
//  AppCoordinator.swift
//  Great Sports
//
//  Created by Abdurrahman Alboghdady on 08/04/2022.
//

import UIKit

class AppCoordinator: Coordinator {
    
    static let shared = AppCoordinator(navigationController: UINavigationController())
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        // launch players view controller
        goToPlayers()
    }
    
    func goToPlayers() {
        // Instantiate PlayersViewController
        let vc = UIStoryboard.instantiate(.players, .players) as! PlayersViewController
        // Instantiate ViewModel
        let viewModel = PlayersViewModel.init()
        // Set the ViewModel to ViewController
        vc.viewModel = viewModel
        // Push it.
        navigationController.pushViewController(vc, animated: true)
        Constants.uWindow?.rootViewController = navigationController
        Constants.uWindow?.makeKeyAndVisible()
    }
    
    func goToPlayerDetails(player: Player) {
//        // Instantiate TeamsViewController
//        let teamsVC = UIStoryboard.instantiate(.teams, .teams) as! TeamsViewController
//        // Set the id to the ViewController
//        teamsVC.league = league
//        // Instantiate ViewModel
//        let teamsViewModel = TeamsViewModel.init()
//        // Set the id to the ViewModel
//        teamsViewModel.competitionId = league.id!
//        // Set the ViewModel to ViewController
//        teamsVC.viewModel = teamsViewModel
//        // Push it.
//        navigationController.pushViewController(teamsVC, animated: true)
    }
}
