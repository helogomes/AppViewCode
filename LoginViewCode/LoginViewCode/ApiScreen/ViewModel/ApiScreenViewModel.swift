//
//  ApiScreenViewModel.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation

class ApiScreenViewModel: ApiScreenView {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .opaqueSeparator
        
        addSubviews()
        addConstraints()
        
        searchButton.addTarget(self, action: #selector(searchButtonAction), for: .touchUpInside)
    }
    
    @objc func searchButtonAction() {
        ApiViaCep.searchCep(cep: cepTextField.text ?? "") { (cep) in
            DispatchQueue.main.sync {
                self.publilcPlaceLabel.text = "Logradouro: \(cep.logradouro)"
                self.ufLabel.text = "Localidade/UF: \(cep.localidade)/\(cep.uf)"
                self.dddLabel.text = "DDD: \(cep.ddd)"
            }
        }
    }
    
  
    
}
