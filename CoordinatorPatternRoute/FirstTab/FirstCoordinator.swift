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
        vc.title = "First"
        vc.viewModel = viewModel
        return vc
    }()

    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
}
