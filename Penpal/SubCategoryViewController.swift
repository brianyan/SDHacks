//
//  SubCategoryViewController.swift
//  Penpal
//
//  Created by Tarush Mohanti on 10/3/15.
//  Copyright © 2015 Brian Yan. All rights reserved.
//

import UIKit

class SubCategoryViewController: UIViewController {

    
    @IBOutlet weak var sports_baseball: UIButton!
    @IBOutlet weak var sports_tennis: UIButton!
    @IBOutlet weak var sports_basketball: UIButton!
    @IBOutlet weak var sports_football: UIButton!
    @IBOutlet weak var sports_soccer: UIButton!
    @IBOutlet weak var music_classical: UIButton!
    @IBOutlet weak var music_electronic: UIButton!
    @IBOutlet weak var music_hiphop: UIButton!
    @IBOutlet weak var music_pop: UIButton!
    @IBOutlet weak var music_rock: UIButton!
    @IBOutlet weak var code_c: UIButton!
    @IBOutlet weak var code_java: UIButton!
    @IBOutlet weak var code_webdev: UIButton!
    @IBOutlet weak var code_python: UIButton!
    @IBOutlet weak var code_mobile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
