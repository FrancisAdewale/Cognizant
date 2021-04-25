//
//  X.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 24/04/2021.
//

import Foundation


struct X: Codable {
    
    var heroes = [Heroes]()
    
    func parseJson(_ jsonString: StringLiteralType) -> [Heroes] {
        
        
        var heroes = [Heroes]()
        
        if let jsonData = jsonString.data(using: .utf8) {
            
            let decoder = JSONDecoder()
            
            let x = try! decoder.decode(X.self, from: jsonData)
            
            heroes = x.heroes
            
//            print(heroes)

        }
        
        return heroes
    }
    
}

struct Heroes: Codable {
    
    var title: String
    
}
