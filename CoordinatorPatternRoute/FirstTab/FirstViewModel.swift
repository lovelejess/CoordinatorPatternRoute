//
//  FirstViewModel.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation

class FirstViewModel: ObservableObject {
    weak var coordinatorDelegate: FirstCoordinatorDelegate?

    @Published var contactInfo: ContactInfo = ContactInfo(email: "", name: "")

    func didPressButton() {
        coordinatorDelegate?.navigate(to: .details)
    }
}
