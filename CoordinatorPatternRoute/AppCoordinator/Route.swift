//
//  Route.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation
enum Route {
    case rootTabBar(TabBarRoute)

    // All the navigational routes for the Tabbar
    enum TabBarRoute {
        case first (FirstRoute)
    }

    // All the navigational routes for the First View
    enum FirstRoute {
        case details
        case main(ContactInfo)
    }
}
