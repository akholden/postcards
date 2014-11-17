//
//  ViewController.swift
//  Postcard
//
//  Created by Raúl López Huete on 4/11/14.
//  Copyright (c) 2014 Raúl López Huete. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
   
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        MessageLabel.hidden = false
        MessageLabel.text = enterMessageTextField.text
        MessageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("mail sent", forState: UIControlState.Normal)
    }

}

