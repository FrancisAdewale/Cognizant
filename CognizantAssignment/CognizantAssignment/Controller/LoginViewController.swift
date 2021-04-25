//
//  ViewController.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 24/04/2021.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {
    

    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var users: [User] = []
    
    var usermanager = UserManager()
    

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Login"
       
        navigationController?.navigationItem.hidesBackButton = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUsernameField()
        setUpPasswordField()
        setUpLoginButton()
        hideKeyboardWhenTappedAround()

        usernameField.delegate = self
        passwordField.delegate = self

    }
    
 
    
    private func setUpUsernameField() {
        
        usernameField.clipsToBounds = true
        usernameField.layer.cornerRadius = 10
        usernameField.layer.borderWidth = 2.5
        usernameField.layer.borderColor = UIColor.gray.cgColor
        usernameField.center = CGPoint(x: view.center.x, y: view.center.y - 80)
    }
    
    private func setUpPasswordField() {
        
        passwordField.clipsToBounds = true
        passwordField.layer.cornerRadius = 10
        passwordField.layer.borderWidth = 2.5
        passwordField.layer.borderColor = UIColor.gray.cgColor
        passwordField.center = CGPoint(x: view.center.x, y: view.center.y)
    }
    
    private func setUpLoginButton() {
        
        loginButton.setTitle("LOGIN", for: .normal)
        loginButton.frame = CGRect(x: view.center.x, y: view.center.y, width: 180, height: 80)
        loginButton.clipsToBounds = true
        loginButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 10.0
        loginButton.layer.borderColor = UIColor(red: 91.0, green: 155.0, blue: 213.0, alpha: 1.0).cgColor
        loginButton.layer.borderColor = #colorLiteral(red: 0, green: 0.2, blue: 0.631372549, alpha: 1)
        loginButton.layer.borderWidth = 4.5
        loginButton.center = CGPoint(x: view.center.x, y: view.center.y + 150)
        view.addSubview(loginButton)
        
    }
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let users = usermanager.fetchUsers() {
            self.users = users
        }
       

    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        for e in users {
            if e.password == passwordField.text! && e.username == usernameField.text! {
                return true
            }
        }
        
        return false
    }
    
    private func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
}

extension LoginViewController: UITextFieldDelegate {

    func textFieldDidBeginEditing(_ textField: UITextField){

        print("helperlwrepe")
        
        if usernameField.isHighlighted == true {
            usernameField.clipsToBounds = true
            usernameField.layer.cornerRadius = 10
            usernameField.layer.borderWidth = 2.5
            usernameField.layer.borderColor = #colorLiteral(red: 0, green: 0.2, blue: 0.631372549, alpha: 1)

        } else if usernameField.isHighlighted == false {
            
            usernameField.clipsToBounds = true
            usernameField.layer.cornerRadius = 10
            usernameField.layer.borderWidth = 2.5
            usernameField.layer.borderColor = UIColor.gray.cgColor
            
        }
        
        if passwordField.isHighlighted == true {
            passwordField.clipsToBounds = true
            passwordField.layer.cornerRadius = 10
            passwordField.layer.borderWidth = 2.5
            passwordField.layer.borderColor = #colorLiteral(red: 0, green: 0.2, blue: 0.631372549, alpha: 1)
        } else if passwordField.isHighlighted == false {
            
                passwordField.clipsToBounds = true
                passwordField.layer.cornerRadius = 10
                passwordField.layer.borderWidth = 2.5
                passwordField.layer.borderColor = UIColor.gray.cgColor
            }
        

        }



}
