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
    let viewModel = FirstTabViewModel()

    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }

    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.viewModel = viewModel
        vc.title = "First"

        vc.loginViewRequested = { [weak self] in
            self?.navigate(to: .details)
        }

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
            let loginViewController = UIHostingController(rootView: FirstDetailView(viewModel: viewModel))
            rootViewController.pushViewController(loginViewController, animated: true)
        }
    }
}
