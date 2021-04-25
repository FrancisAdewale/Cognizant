//
//  UserManager.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 25/04/2021.
//

import UIKit
import CoreData

struct UserManager {
        
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    
    func fetchUsers() -> [User]? {
        
        let fetch = NSFetchRequest<User>(entityName: "User")
        do {
            let request  = try context.fetch(fetch)
            return request
        } catch {
            print("Could not fetch \(error)")
        }
        return nil
    }
    
}
