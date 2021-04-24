//
//  RegisterViewController.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 23/04/2021.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Register"
        setUpUsernameField()
        setUpPasswordField()
        setUpRegisterButton()
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
        usernameField.layer.borderColor = UIColor.gray.cgColor
        passwordField.center = CGPoint(x: view.center.x, y: view.center.y + 50)

    }
    
    private func setUpRegisterButton() {
        
        registerButton.setTitle("DONE", for: .normal)
        registerButton.frame = CGRect(x: view.center.x, y: view.center.y, width: 180, height: 80)
        registerButton.clipsToBounds = true
        registerButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
        registerButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.layer.cornerRadius = 10.0
        registerButton.layer.borderColor = UIColor(red: 91.0, green: 155.0, blue: 213.0, alpha: 1.0).cgColor
        registerButton.layer.borderWidth = 2.0
        registerButton.center = CGPoint(x: view.center.x, y: view.center.y + 150)
        view.addSubview(registerButton)
        
    }
    

    
}
