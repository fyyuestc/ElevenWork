//
//  ViewController.swift
//  ElevenWork
//
//  Created by student on 2018/12/6.
//  Copyright © 2018年 2016110305. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var account: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var myZone: UITextField!
  
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the vziew, typically from a nib.
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "game" {
            let secVc = segue.destination as! GameViewController
            secVc.newAccount = account.text!
            secVc.newPassword = password.text!
            secVc.newZone = myZone.text!
        }
    }
    
    
    @IBAction func myBack(segue:UIStoryboardSegue){
        if let secVc = segue.source as? GameViewController {
            account.text = secVc.newAccount
            password.text = secVc.newPassword
            myZone.text = secVc.newZone
        
        }
        
    }

}

