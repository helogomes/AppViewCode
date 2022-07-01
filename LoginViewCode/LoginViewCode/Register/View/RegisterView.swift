//
//  RegisterView.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation
import UIKit

class RegisterView: UIViewController {
    
    
     lazy var registerLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Cadastro"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
     lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Nome"
        textField.backgroundColor = .white
        textField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
    
    lazy var confirmPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Confirmar senha"
        textField.backgroundColor = .white
        textField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameTextField, emailTextField, passwordTextField, confirmPasswordTextField])
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 25
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
     lazy var buttonConfirm: UIButton = {
        let button = UIButton()
        button.setTitle("Confirmar", for: .normal)
        button.backgroundColor = .blue
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    
}

extension RegisterView: ViewCode {
    
    func addConstraints() {
        
        registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        registerLabel.constrainSize(CGSize(width: 160, height: 50))
        
        nameTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        
        buttonConfirm.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 600).isActive = true
        buttonConfirm.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        buttonConfirm.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        buttonConfirm.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    
}

extension RegisterView {
    
    func addSubviews() {
       
       view.addSubview(registerLabel)
       view.addSubview(stackView)
       view.addSubview(buttonConfirm)
   }
    
}
