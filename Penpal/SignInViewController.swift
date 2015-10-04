//
//  SignInViewController.swift
//  Penpal
//
//  Created by Brian Yan on 10/3/15.
//  Copyright © 2015 Brian Yan. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet var SignIn: UIButton!
    
    @IBOutlet var Username: UITextField!
    @IBOutlet var Password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SignInAction(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(Username.text!, password:Password.text!) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
                
            } else {
                // The login failed. Check error to see why.
            }
        }
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
