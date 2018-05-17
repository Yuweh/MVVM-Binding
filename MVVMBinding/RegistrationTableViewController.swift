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
    var selectedUser: UserViewModel!
    
    
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
        self.selectedUser.email.bind { self.emailTextField.text = $0 }
        self.selectedUser.password.bind { self.passwordTextField.text = $0 }
        
        //self.emailTextField.text
    }
    
    @IBAction func save() {
        
        print(self.registrationViewModel)
        self.selectedUser.email.value = self.emailTextField.text
        self.selectedUser.password.value = self.passwordTextField.text
    }
    
}
