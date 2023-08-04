//
//  FirstDetailViewModel.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation

class FirstDetailViewModel: ObservableObject {
    weak var coordinatorDelegate: FirstCoordinatorDelegate?

    var name: String = ""
    var email: String = ""

    func didPressSubmit() {
        let contactInfo = ContactInfo(email: name, name: email)
        coordinatorDelegate?.navigate(to: .main(contactInfo))
    }
}
