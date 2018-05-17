//
//  BindingTextBox.swift
//  MVVMBinding
//
//  Created by Francis Jemuel Bergonia on 17/05/2018.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class BindingTextBox: UITextField {
    
    var textChanged: (String) -> () = { _ in }
 
    func bind(callback: @escaping (String) -> ()) {
        self.textChanged = callback
        
        self.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        self.textChanged(textField.text!)
    }
}
