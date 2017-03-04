//
//  BasicUITextFieldViewController.swift
//  IOS10UITextField
//
//  Created by Arthit Thongpan on 3/4/17.
//  Copyright © 2017 Arthit Thongpan. All rights reserved.
//

import UIKit

class BasicUITextFieldViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showText(text: "")
        clearText()
    }

    // MARK: - Action
    
    @IBAction func showButtonTapped(_ sender: UIButton) {
        
        showText(text: textField.text!)
        hideKeyboard()
        clearText()
    }
        
    func hideKeyboard() {
        textField.resignFirstResponder()
    }
    
    func showText(text: String) {
        outputLabel.text = "ข้อความคือ : \(text)"
    }
    
    func clearText() {
        textField.text = ""
    }
}
