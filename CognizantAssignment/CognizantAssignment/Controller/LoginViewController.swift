//
//  ViewController.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 24/04/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Login"
        setUpUsernameField()
        setUpPasswordField()
        setUpLoginButton()
        navigationController?.navigationItem.hidesBackButton = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    private func setUpUsernameField() {
        usernameField.clipsToBounds = true
        usernameField.layer.cornerRadius = 10.0
        usernameField.layer.borderColor = UIColor.gray.cgColor
        usernameField.center = view.center
        
    }
    
    private func setUpPasswordField() {
        
        passwordField.clipsToBounds = true
        passwordField.layer.cornerRadius = 10.0
        passwordField.layer.borderColor = UIColor.gray.cgColor
        passwordField.center = CGPoint(x: view.center.x, y: view.center.y + 50)

    }
    
    private func setUpLoginButton() {
        
        loginButton.setTitle("DONE", for: .normal)
        loginButton.frame = CGRect(x: view.center.x, y: view.center.y, width: 180, height: 80)
        loginButton.clipsToBounds = true
        loginButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 10.0
        loginButton.layer.borderColor = UIColor(red: 91.0, green: 155.0, blue: 213.0, alpha: 1.0).cgColor
        loginButton.layer.borderWidth = 2.0
        loginButton.center = CGPoint(x: view.center.x, y: view.center.y + 150)
        view.addSubview(loginButton)
        
    }

}
