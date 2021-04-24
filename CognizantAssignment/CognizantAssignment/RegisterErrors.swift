//
//  RegisterErrors.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 23/04/2021.
//

import UIKit

public enum RegisterError: Error {
    
    case usernameIsNil
    case passwordIsNil
    case tooLong
    case tooShort
    
}
