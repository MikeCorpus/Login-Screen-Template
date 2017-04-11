//
//  ViewController.swift
//  Sign In Template
//
//  Created by Michael V. Corpus on 07/04/2017.
//  Copyright © 2017 Michael V. Corpus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func SignIn(_ sender: Any) {
        performSegue(withIdentifier: "Sign In", sender: self)
    }
    
    @IBAction func Sign(_ sender: Any) {
        performSegue(withIdentifier: "Sign Up", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

