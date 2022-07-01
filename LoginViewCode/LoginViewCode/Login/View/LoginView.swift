//
//  LoginView.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation
import UIKit

class LoginView: UIViewController {
    
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Login"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var emailTextField: UITextField = {
       let textField = UITextField()
       textField.placeholder = "E-mail"
       textField.backgroundColor = .white
       textField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
       textField.layer.cornerRadius = 10
       textField.translatesAutoresizingMaskIntoConstraints = false
       return textField
   }()
   
   
    lazy var passwordTextField: UITextField = {
       let textField = UITextField()
       textField.placeholder = "Senha"
       textField.backgroundColor = .white
       textField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
       textField.layer.cornerRadius = 10
       textField.isSecureTextEntry = true
       textField.translatesAutoresizingMaskIntoConstraints = false
       return textField
   }()

    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [loginLabel , emailTextField, passwordTextField])
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 25
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var buttonLogin: UIButton = {
       let button = UIButton()
       button.setTitle("Entrar", for: .normal)
       button.backgroundColor = .blue
       button.tintColor = .white
       button.layer.cornerRadius = 5
       button.translatesAutoresizingMaskIntoConstraints = false
       return button
   }()
    
    lazy var buttonRegister: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
        button.backgroundColor = .blue
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
   }()
    
    
    lazy var stackViewButton: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [ buttonLogin, buttonRegister])
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
}

extension LoginView: ViewCode {
    
    func addConstraints() {
     
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        emailTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        
        stackViewButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        stackViewButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        stackViewButton.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 650).isActive = true
        buttonLogin.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonRegister.heightAnchor.constraint(equalToConstant: 40).isActive = true


    }
    
    
}

extension LoginView {
    
    func addSubviews() {
        view.addSubview(loginLabel)
        view.addSubview(stackView)
        view.addSubview(stackViewButton)
    }
}

