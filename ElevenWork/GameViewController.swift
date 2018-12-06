//
//  GameViewController.swift
//  ElevenWork
//
//  Created by student on 2018/12/6.
//  Copyright © 2018年 2016110305. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var newAccount = ""
    var newPassword = ""
    var newZone = ""
    
    @IBOutlet weak var accountText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var zoneText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        newAccount = accountText.text ?? ""
        newPassword = passwordText.text ?? ""
        newZone = zoneText.text ?? ""
    }

}
