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
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var ForgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        guard let sender = sender as? UIButton else { return }
        if sender == forgotUserNameButton{
            segue.destination.navigationItem.title = "Forgot UserName"
        } else if  sender == ForgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
    
    
    @IBAction func ForgotUsernameTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "LogInSegue" , sender: forgotUserNameButton)
        
        
            
    }
    
    @IBAction func ForgotPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "LogInSegue", sender: ForgotPasswordButton)
    }
    
}

