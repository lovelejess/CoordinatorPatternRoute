//
//  FirstDetailViewModel.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation

class FirstDetailViewModel: ObservableObject {
    weak var coordinatorDelegate: FirstCoordinatorDelegate?

    @Published var name: String = ""
    @Published var email: String = ""

    func didPressSubmit() {
        coordinatorDelegate?.navigate(to: .main)
    }
}
