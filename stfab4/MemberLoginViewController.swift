//
//  MemberLoginViewController.swift
//  stfab4
//
//  Created by MKB on 10/02/2018.
//  Copyright © 2018 MKB. All rights reserved.
//

import UIKit

class MemberLoginViewController: UIViewController {
    @IBOutlet var userName: UITextField!
    
    @IBOutlet var password: UITextField!
    @IBAction func loginPressed(_ sender: Any) {
        performSegue(withIdentifier: "LoginToMainSecreen", sender: self)
    }
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

}
