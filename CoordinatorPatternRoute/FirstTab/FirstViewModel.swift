//
//  FirstViewModel.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation

class FirstTabViewModel: ObservableObject {
//    weak var coordinatorDelegate: FirstCoordinatorDelegate?

    @Published var name: String = ""
    @Published var email: String = ""

//    func didPressButton() {
//        coordinatorDelegate?.navigate(to: .details)
//    }
}
