//
//  RegisterViewModel.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation
import UIKit
import CoreData

class RegisterViewModel: RegisterView {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .opaqueSeparator
        
        addSubviews()
        addConstraints()
        
        buttonConfirm.addTarget(self, action: #selector(buttonConfirmAction), for: .touchUpInside)
        
    }
    
    
    
    @objc func buttonConfirmAction() {
        
        if nameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "" && confirmPasswordTextField.text != "" {
            if passwordTextField.text == confirmPasswordTextField.text {
                self.navigationController?.pushViewController(LoginViewModel(), animated: true)
                saveUser(email: emailTextField.text ?? "", password: passwordTextField.text ?? "")
            } else {
                showAlertError()
            }
        }else {
            showAlertWarning()
        }
    }
    
    func saveUser(email: String, password: String) {
               guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
                return
               }
               let managedContext = appDelegate.persistentContainer.viewContext
               let entity = NSEntityDescription.entity(forEntityName: "User", in: managedContext)!
               let user = NSManagedObject(entity: entity, insertInto: managedContext)
            
              user.setValue(email, forKey: "email")
              user.setValue(password, forKey: "password")
               
               do {
                   try managedContext.save()
                   print("Save")
               } catch let error as NSError {
                   print("Could not save. \(error)")
               }
  
    
    }
    
}




    

