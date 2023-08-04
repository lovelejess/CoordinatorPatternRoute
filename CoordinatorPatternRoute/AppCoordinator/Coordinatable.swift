//
//  Coordinatable.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation

protocol Coordinatable: AnyObject {
    var childCoordinators: [Coordinatable] { get }
    func start()
}
