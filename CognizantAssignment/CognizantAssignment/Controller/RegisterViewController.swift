//
//  RegisterViewController.swift
//  CognizantAssignment
//
//  Created by Francis Adewale on 23/04/2021.
//

import UIKit
import CoreData

class RegisterViewController: UIViewController {
    
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    


    
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
        usernameField.delegate = self
        passwordField.delegate = self
        

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        //Revert to old colour, just this navigation bar
//        UINavigationBar.appearance().barTintColor = UIColor(red: 91.0, green: 155.0, blue: 213.0, alpha: 1.0)
        

    }
    
    private func setUpUsernameField() {
        usernameField.clipsToBounds = true
        usernameField.layer.cornerRadius = 10
        usernameField.layer.borderWidth = 2.5
        usernameField.layer.borderColor = UIColor.gray.cgColor
        usernameField.center = view.center
        
    }
    
    private func setUpPasswordField() {
        
        passwordField.clipsToBounds = true
        passwordField.layer.cornerRadius = 10
        passwordField.layer.borderWidth = 2.5
        passwordField.layer.borderColor = UIColor.gray.cgColor
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
        registerButton.layer.borderColor = #colorLiteral(red: 0, green: 0.2, blue: 0.631372549, alpha: 1)
        registerButton.layer.borderWidth = 4.5
        registerButton.center = CGPoint(x: view.center.x, y: view.center.y + 150)
        view.addSubview(registerButton)
        
    }
    
    
    @IBAction func donePressed(_ sender: UIButton) {
        
        let userEntity = User(context: context)

        
        if let text = usernameField.text {
            if text.count > 10 {
                do {
                    try throwUsernameTooLong()
                } catch {
        
                    print("\(error.localizedDescription) Username Too Long ")
                    
                }
            } else {
                userEntity.username = text

            }
            

        }
        
        if let passwordText = passwordField.text {
            if passwordText.count > 15 {
                
                do {
                    try throwPasswordtooLong()
                } catch {
        
                    print("\(error.localizedDescription) Password Too Long")
                    
                }
                
            } else {
                userEntity.password = passwordText

            }

        }

        
    
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let userEntity = User(context: context)
        
        guard let username = usernameField.text else { fatalError("username issues")}
        guard let password = passwordField.text else { fatalError("password issues") }
        
        if username.count >= 7 && password.count >= 8 {
            save()

            return true
        }

        
        return false
    }
    
    
    
    
    
    func throwUsernameTooLong() throws {
        
    
        let ac = UIAlertController(title: "Username Too Long", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        ac.addAction(action)
        present(ac, animated: true, completion: nil)
        throw RegisterError.tooLong
  
    }
    
    func throwPasswordtooLong() throws {
        
        let ac = UIAlertController(title: "Password Too Long", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        ac.addAction(action)
        present(ac, animated: true, completion: nil)
        
        throw RegisterError.tooLong
        
  
    }
    
    private func save() {
        do {
            try context.save()
        } catch {
            print("Could not save \(error)")
        }
    }

}


extension RegisterViewController: UITextFieldDelegate {
    
    
    func textFieldDidBeginEditing(_ textField: UITextField){

        
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
