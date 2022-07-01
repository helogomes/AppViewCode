//
//  LoginViewModel.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation
import CoreData
import SwiftUI

class LoginViewModel: LoginView {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .opaqueSeparator
        
        addSubviews()
        addConstraints()
        
        buttonLogin.addTarget(self, action: #selector(buttonLoginAction), for: .touchUpInside)
        buttonRegister.addTarget(self, action: #selector(buttonRegisterAction), for: .touchUpInside)
        
    }
    
    @objc func  buttonLoginAction() {
        
        if login(email: emailTextField.text ?? "", password: passwordTextField.text ?? "") {
            self.navigationController?.pushViewController(ApiScreenViewModel(), animated: true)
        }else {
            print("erro")
            showAlertUser()
        }
        
    }
    
    @objc func buttonRegisterAction() {
        self.navigationController?.pushViewController(RegisterViewModel(), animated: true)
    }
    
    var user: [NSManagedObject] = []

    func login(email: String, password: String) -> Bool {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return false
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "User")
        do {
            user = try managedContext.fetch(fetchRequest)
            
            for users in user {
                if email == users.value(forKey: "email") as? String && password == users.value(forKey: "password") as? String{
                    return true
                }
                
            }
            print("OK")
        } catch let error as NSError {
            print("Error \(error)")
        }
        return false
    }
    
}
