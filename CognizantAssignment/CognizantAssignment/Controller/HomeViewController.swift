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

    }
    
    fileprivate func setUpRegisterButton() {
        
        registerButton.setTitle("Register", for: .normal)
        registerButton.frame = CGRect(x: view.center.x, y: view.center.y, width: 180, height: 80)
        registerButton.clipsToBounds = true
        registerButton.layer.cornerRadius = 10.0
        registerButton.layer.borderColor = UIColor.white.cgColor
        registerButton.layer.borderWidth = 2.0
        registerButton.center = CGPoint(x: view.center.x, y: view.center.y - 50)
        registerButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        view.addSubview(registerButton)
    }
    
    
    fileprivate func setUpLoginButton() {
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.frame = CGRect(x: view.center.x, y: view.center.y, width: 180, height: 80)
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 10.0
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.layer.borderWidth = 2.0
        loginButton.center = CGPoint(x: view.center.x, y: view.center.y + 50)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        view.addSubview(loginButton)
    }
    

}

