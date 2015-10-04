//
//  SignUpViewController.swift
//  Penpal
//
//  Created by Brian Yan on 10/3/15.
//  Copyright © 2015 Brian Yan. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var Sign_Up: UIButton!
    
    @IBOutlet var Username: UITextField!
    @IBOutlet var Password: UITextField!
    @IBOutlet var Email: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUITextField()
        // Do any additional setup after loading the view.
        self.Username.delegate = self;
        self.Password.delegate = self;
        self.Email.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SignUpRequest(sender: AnyObject) {
        let user = PFUser()
        user.username = Username.text
        user.password = Password.text
        user.email = Email.text
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool, error: NSError?) -> Void in
            if (succeeded) {
                self.performSegueWithIdentifier("ToMusicSegue", sender: self)
                // Show the errorString somewhere and let the user try again.
            } else {
                // Hooray! Let them use the app now.
            }
        }
    }
    func setupUITextField(){
        Sign_Up.titleLabel?.center
        Username.font = UIFont(name: "Avenir", size: 15)
        Password.font = UIFont(name: "Avenir", size: 15)
        Email.font = UIFont(name: "Avenir", size: 15)

        
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
