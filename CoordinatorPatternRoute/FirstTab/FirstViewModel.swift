//
//  FirstViewModel.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Foundation

class FirstTabViewModel: ObservableObject {

    @Published var name: String = ""
    @Published var email: String = ""
    @Published var didSubmitLogin: Bool = false
}
