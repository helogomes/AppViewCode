//
//  ExtensionRegister.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation
import UIKit


extension UIViewController {
    func showAlertError() {
        let alert = UIAlertController(title: "Erro!", message: "As senhas digitadas não são iguais", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
      }
    
    func showAlertWarning() {
        let alert = UIAlertController(title: "Atenção!", message: "Preencha todos os campos", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
