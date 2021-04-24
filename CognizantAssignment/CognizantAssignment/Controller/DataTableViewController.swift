//
//  DataTableViewController.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 24/04/2021.
//

import UIKit

class DataTableViewController: UITableViewController {
  
    let data = """
    {
        "heroes": [
            {
            \"title\": \"Iron Man\"
            },
            {
            \"title\": \"Captain America\"
            },
            {
            \"title\": \"Hulk\"
            },
            {
            \"title\": \"Black Widow\"
            },
            {
            \"title\": \"Superman\"
            },
            {
            \"title\": \"Spiderman\"
            },
            {
            \"title\": \"Thor\"
            }

        ]

    }

"""

    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.hidesBackButton = true
        navigationController?.navigationBar.tintColor = UIColor(red: 91.0, green: 155.0, blue: 213.0, alpha: 1.0) 
     
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        if let jsonData = data.data(using: .utf8) {
            
            let decoder = JSONDecoder()
            
            let x = try! decoder.decode(X.self, from: jsonData)
            
            print(x.heroes.count)

            
            
       
            
        }
        
        
        //        if let data = try? Data(contentsOf: urlString!) {
        //
        //            print(data)
//
//        }

    

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }



}


