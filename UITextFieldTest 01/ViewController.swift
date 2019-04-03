//
//  ViewController.swift
//  UITextFieldTest 01
//
//  Created by dit08 on 2019. 4. 3..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Delegate class Connection
        myTextField.delegate = self
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let inString = myTextField.text! + "Coding"
        myLabel.text = inString
        myTextField.text = ""
        myTextField.resignFirstResponder() //키패드 권한을 박탈
        
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        return true
    }
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        myTextField.backgroundColor = UIColor.yellow
        return true
    }
}

