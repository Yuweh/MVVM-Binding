//
//  RegistrationTableViewController.swift
//  MVVMBinding
//
//  Copyright © ©XiAPPS. All rights reserved.
//

import Foundation
import UIKit

class RegistrationTableViewController : UITableViewController {
    
    private var registrationViewModel: RegistrationViewModel!
    
    
    
    @IBOutlet weak var emailTextField: BindingTextBox! {
        didSet {
            emailTextField.bind { self.registrationViewModel.email = $0 }
        }
    }
        
    @IBOutlet weak var passwordTextField: BindingTextBox! {
        didSet {
            passwordTextField.bind { self.registrationViewModel.password = $0 }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registrationViewModel = RegistrationViewModel()
        //self.emailTextField.text
    }
    
    @IBAction func save() {
        
        print(self.registrationViewModel)
    }
    
}
