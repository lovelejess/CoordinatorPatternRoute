//
//  FirstTabCoordinator.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation
import SwiftUI
import UIKit

class FirstCoordinator: Coordinatable {

    var rootViewController: UINavigationController
    var childCoordinators: [Coordinatable] = []
    let firstViewModel = FirstViewModel()
    let firstDetailViewModel = FirstDetailViewModel()

    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }

    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        firstViewModel.coordinatorDelegate = self
        vc.viewModel = firstViewModel
        vc.title = "First"

        return vc
    }()

    lazy var loginViewController: UIHostingController = {
        firstDetailViewModel.coordinatorDelegate = self
        let vc = UIHostingController(rootView: FirstDetailView(viewModel: firstDetailViewModel))
        return vc
    }()

    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
}

extension FirstCoordinator: FirstCoordinatorDelegate {
    func navigate(to route: Route.FirstRoute) {
        switch route {
        case .details:
            rootViewController.pushViewController(loginViewController, animated: true)
        case .main:
            rootViewController.popToRootViewController(animated: true)
            childCoordinators = []
        }
    }
}
