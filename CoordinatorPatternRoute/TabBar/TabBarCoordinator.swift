//
//  TabBarCoordinator.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinatable {
    var childCoordinators: [Coordinatable] = []
    var rootViewController: UITabBarController

    init() {
        rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .lightGray
    }

    func start() {
        let firstCoordinator = FirstCoordinator()
        firstCoordinator.start()
        childCoordinators.append(firstCoordinator)

        let firstViewController = firstCoordinator.rootViewController
        setup(vc: firstViewController, title: "First", imageName: "house", selectedImageName: "house.fill")

        rootViewController.viewControllers = [firstViewController]
    }

    private func setup(vc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        let defaultImage = UIImage(systemName: imageName)
        let selectedImage = UIImage(systemName: selectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        vc.tabBarItem = tabBarItem
    }
}
