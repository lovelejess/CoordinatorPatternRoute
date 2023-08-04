//
//  ContactInfo.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation

struct ContactInfo {
    let email: String
    let name: String
    
    static func == (lhs: ContactInfo, rhs: ContactInfo) -> Bool {
        return lhs.email == rhs.email && lhs.name == rhs.name
    }
    
}
