//
//  DataTableViewController.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 24/04/2021.
//

import UIKit

class DataTableViewController: UITableViewController {
    
    var heroes: [Heroes] = []
    
    let x = X()
  
    let data = """
    {
        "heroes": [
            {
            "title": "Iron Man"
            },
            {
            "title": "Captain America"
            },
            {
            "title": "Hulk"
            },
            {
            "title": "Black Widow"
            },
            {
            "title": "Superman"
            },
            {
            "title": "Spiderman"
            },
            {
            "title": "Thor"
            }

        ]

    }

"""


    override func viewWillAppear(_ animated: Bool) {
        navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barStyle = .default
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.3568627451, green: 0.6078431373, blue: 0.8352941176, alpha: 1)

    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 71.0

        self.heroes = x.parseJson(data)
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    //MARK: - Table view deletagte
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = heroes[indexPath.row].title
        cell.layer.borderWidth = 1.2
        cell.layer.borderColor =  #colorLiteral(red: 0.3568627451, green: 0.6078431373, blue: 0.8352941176, alpha: 1)
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1.2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.3568627451, green: 0.6078431373, blue: 0.8352941176, alpha: 1)
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.2
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.3568627451, green: 0.6078431373, blue: 0.8352941176, alpha: 1)
        return view
    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}


