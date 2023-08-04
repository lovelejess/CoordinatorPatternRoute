//
//  FirstViewController.swift
//  CoordinatorPatternRoute
//
//  Created by Jess Lê on 8/4/23.
//

import Combine
import UIKit

class FirstViewController: UIViewController {

    lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(onButtonPress), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    var viewModel: FirstViewModel!
    var subscriptions = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        addViews()
        
        viewModel.$contactInfo
            .sink { [weak self] (info) in
                guard let self = self else { return }
                if info.name.count + info.email.count > 0 {
                    self.infoLabel.text = "\(info.name) with email: \(info.email)"
                } else {
                    self.infoLabel.text = "Login to Continue!"
                }
            }.store(in: &subscriptions)
    }

    private func addViews() {
        view.addSubview(infoLabel)
        view.addSubview(loginButton)
        setupLayoutForInfoLabel()
        setupLayoutForLoginButton()
    }

    @objc
    private func onButtonPress() {
        viewModel.didPressButton()
    }

    private func setupLayoutForInfoLabel() {
        let constraints = [
            infoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoLabel.heightAnchor.constraint(equalToConstant: 60),
        ]
        NSLayoutConstraint.activate(constraints)
    }

    private func setupLayoutForLoginButton() {
        let constraints = [
            loginButton.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 100),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            loginButton.heightAnchor.constraint(equalToConstant: 60),
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
