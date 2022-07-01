//
//  ViewCode.swift
//  LoginViewCode
//
//  Created by user218997 on 30/06/22.
//

import Foundation

protocol ViewCode {
    func addConstraints()
    func additionalConfiguration()
    func setup()
}

extension ViewCode {
    func setup() {
        addConstraints()
        additionalConfiguration()
    }
    
    func additionalConfiguration() {}
}
