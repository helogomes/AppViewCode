//
//  ExtensionLogin.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAlertUser() {
        let alert = UIAlertController(title: "Erro", message: "Usuário não cadastrado", preferredStyle: .alert)
        let action = UIAlertAction(title: "Tentar novamente", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
}
