//
//  ViewController.swift
//  Login
//
//  Created by Armando Carrillo on 01/05/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userNameTextField.text
    }

}

