//
//  FirstCoordinatorDelegate.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation

protocol FirstCoordinatorDelegate: AnyObject {
    func navigate(to route: Route.FirstRoute)
}
