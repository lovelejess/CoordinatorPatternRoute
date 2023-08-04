//
//  Route.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation
enum Route: Equatable {
    case rootTabBar(TabBarRoute)

    // All the navigational routes for the Tabbar
    enum TabBarRoute: Equatable {
        case first (FirstRoute)
    }

    // All the navigational routes for the First View
    enum FirstRoute: Equatable {
        case details
    }
}
