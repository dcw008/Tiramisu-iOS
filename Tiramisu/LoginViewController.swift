//
//  LoginViewController.swift
//  Tiramisu
//
//  Created by Derrick Wong on 6/16/17.
//  Copyright © 2017 Derrick Wong. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        usernameField.becomeFirstResponder()


//        //observer to monitor authentication state.
//        FIRAuth.auth()!.addStateDidChangeListener() { auth, user in
//            // 2
//            if user != nil {
//                // 3
//                self.performSegue(withIdentifier: self.loginToList, sender: nil)
//            }
//        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLoginTapped(_ sender: Any) {
        if usernameField.text != nil && passwordField.text != nil{
            //email input
            let email = usernameField.text
            //password input
            let password = passwordField.text
            
            //
            FIRAuth.auth()!.signIn(withEmail: email!, password: password!, completion: { (user, error) in
                if let user = user{
                    let thisStoryBoard = UIStoryboard(name: "HomeStoryboard", bundle:nil)
                    let homeViewController = thisStoryBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                    homeViewController.user = user
                    self.present(homeViewController, animated: true, completion: nil)
                } else {
                    print ("BAD AUTHENTICATION")
                }
            })
            
            
                
        }
    }
        
}
    

