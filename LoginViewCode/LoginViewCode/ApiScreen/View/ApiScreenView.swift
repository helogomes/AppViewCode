//
//  ApiScreenView.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation
import UIKit

class ApiScreenView: UIViewController {
    
    
    
    lazy var cepTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Digite o cep"
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 5
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var searchButton: UIButton = {
        let button = UIButton()
        button.setTitle("Pesquisar", for: .normal)
        button.backgroundColor = .blue
        button.tintColor = .white
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var publilcPlaceLabel: UILabel = {
        let label = UILabel()
        label.text = "Logradouro: "
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.font = UIFont(name: "Helvetica", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var ufLabel: UILabel = {
        let label = UILabel()
        label.text = "Localidade/UF: "
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.font = UIFont(name: "Helvetica", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var dddLabel: UILabel = {
        let label = UILabel()
        label.text = "DDD: "
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.font = UIFont(name: "Helvetica", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [publilcPlaceLabel, ufLabel, dddLabel])
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
}


extension ApiScreenView: ViewCode {
    
    func addConstraints() {
        
        cepTextField.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        cepTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        cepTextField.constrainSize(CGSize(width: 250, height: 35))
        
        searchButton.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        searchButton.leadingAnchor.constraint(equalTo: cepTextField.leadingAnchor, constant: 270).isActive = true
        searchButton.constrainSize(CGSize(width: 100, height: 35))
  
        publilcPlaceLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        ufLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        dddLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        stackView.bottomAnchor.constraint(equalTo: cepTextField.topAnchor, constant: 200).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    
}
}


extension ApiScreenView {
    
    func addSubviews() {
       
        view.addSubview(cepTextField)
        view.addSubview(searchButton)
        view.addSubview(stackView)
   }
    
}
