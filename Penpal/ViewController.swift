//
//  ViewController.swift
//  Penpal
//
//  Created by Brian Yan on 10/2/15.
//  Copyright © 2015 Brian Yan. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

   

    @IBOutlet weak var category_music: UIButton!
    
    @IBOutlet weak var category_sports: UIButton!
    
    @IBOutlet weak var category_code: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }


}

