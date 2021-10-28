//
//  HomeCoordinator.swift
//  SnoKE
//
//  Created by Ilya Buldin on 28.10.2021.
//

import UIKit

protocol HomeCoordinatorProtocol {
    func coordinate(to vc: UIViewController)
}

final class HomeCoordinator: CoreCoordinator {
    
    override func start() {
        let presenter = HomePresenter(coordinator: self)
        let homeVC = HomeViewController(presenter: presenter)
        configure(self, with: homeVC)
        navigationController.pushViewController(homeVC, animated: false)
    }
}

extension HomeCoordinator: HomeCoordinatorProtocol {
    func coordinate(to vc: UIViewController) {
        navigationController.pushViewController(vc, animated: true)
    }
}

