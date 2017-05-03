//
//  SignInViewController.swift
//  Sign In Template
//
//  Created by Michael V. Corpus on 07/04/2017.
//  Copyright © 2017 Michael V. Corpus. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logIn(_ sender: Any) {
        if usernameTextField.text != "" && passwordTextField.text != "" {
            AuthProvider.Instance.login(withEmail: usernameTextField.text!, password: passwordTextField.text!, LoginHandler: { (message) in
                
                if message != nil {
                    self.alertTheUser(title: "Problem with Authentication", message: message!)
                } else {
                    print("LOGIN COMPLETE")
                }
            
            
            })
        } else {
            self.alertTheUser(title: "Login Failed", message: "Please enter a valid email and password")
        }
    }
    
    private func alertTheUser(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    

 
}
