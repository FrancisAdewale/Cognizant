//
//  RegisterTests.swift
//  CognizantAssignmentTests
//
//  Created by Francis Adewale on 24/04/2021.
//

import Foundation
@testable import CognizantAssignment

extension RegisterViewController {
    
    func throwUsernameNilError() throws {
        
        throw RegisterError.usernameIsNil
        
  
    }
    
    func throwPasswordNilError() throws {
        
        throw RegisterError.passwordIsNil
 
    }
    
    
 
    
    
}

