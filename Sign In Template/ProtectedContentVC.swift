//
//  ProtectedContentVC.swift
//  Sign In Template
//
//  Created by Michael V. Corpus on 04/05/2017.
//  Copyright © 2017 Michael V. Corpus. All rights reserved.
//

import UIKit

class ProtectedContentVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logout(_ sender: Any) {
        if AuthProvider.Instance.logout() {
            dismiss(animated: true, completion: nil)
        } else {
            alertTheUser(title: "Problem Signing Out", message: "Please try again later.")
        }
    }
    
    private func alertTheUser(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
   
}















