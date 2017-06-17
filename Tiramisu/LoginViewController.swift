//
//  LoginViewController.swift
//  Tiramisu
//
//  Created by Derrick Wong on 6/16/17.
//  Copyright © 2017 Derrick Wong. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onLoginTapped(_ sender: Any) {
        if usernameField.text != nil && passwordField.text != nil{
            
            let email = usernameField.text
            let password = passwordField.text
            
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                
                
            }
        }
        
    }
    
}
