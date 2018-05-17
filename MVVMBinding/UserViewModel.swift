//
//  UserViewModel.swift
//  MVVMBinding
//
//  Created by Francis Jemuel Bergonia on 17/05/2018.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation

class UserViewModel {
    
    var email: Dynamic<String>!
    var password: Dynamic<String>!
    
    init(email :String, password :String) {
        self.email = Dynamic<String>(email)
        self.password = Dynamic<String>(password)
    }
    
}
