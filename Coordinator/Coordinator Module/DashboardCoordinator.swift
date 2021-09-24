//
//  DashboardCoordinator.swift
//  Coordinator
//
//  Created by Sergei Romanchuk on 24.09.2021.
//

import UIKit

class DashboardCoordinator: CoordinatorProtocol {
    
    var childCoordinators: [CoordinatorProtocol] = []
    
    var navigationController: UINavigationController
    
    weak var parentCoordinator: ApplicationCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController: DashboardViewController = DashboardViewController.instantiate()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    deinit {
        print("\(type(of: self)) deinited.")
    }
//    func didFinish() {
//        parentCoordinator?.childDidFinish(self)
//    }
    
}
