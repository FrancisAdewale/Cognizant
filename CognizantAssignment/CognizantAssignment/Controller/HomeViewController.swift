//
//  ViewController.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 23/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpRegisterButton()
        setUpLoginButton()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"

    }
    
    public func setUpRegisterButton() {
        
        registerButton.setTitle("REGISTER", for: .normal)
        registerButton.frame = CGRect(x: view.center.x, y: view.center.y, width: 180, height: 80)
        registerButton.clipsToBounds = true
        registerButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
        registerButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.layer.cornerRadius = 10.0
        registerButton.layer.borderColor = #colorLiteral(red: 0, green: 0.2, blue: 0.631372549, alpha: 1)
        registerButton.layer.borderWidth = 4.5
        registerButton.center = CGPoint(x: view.center.x, y: view.center.y - 50)
        view.addSubview(registerButton)
    }
    
    
    fileprivate func setUpLoginButton() {
        
        loginButton.setTitle("LOGIN", for: .normal)
        loginButton.frame = CGRect(x: view.center.x, y: view.center.y, width: 180, height: 80)
        loginButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 10.0
        loginButton.layer.borderColor = #colorLiteral(red: 0, green: 0.2, blue: 0.631372549, alpha: 1)
        loginButton.layer.borderWidth = 4.5
        loginButton.center = CGPoint(x: view.center.x, y: view.center.y + 50)
        view.addSubview(loginButton)
    }
    

}

