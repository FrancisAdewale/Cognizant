//
//  X.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 24/04/2021.
//

import Foundation


struct X: Codable {
    
    var heroes = [Heroes]()
    
}

struct Heroes: Codable {
    
    var title: String
    
}
