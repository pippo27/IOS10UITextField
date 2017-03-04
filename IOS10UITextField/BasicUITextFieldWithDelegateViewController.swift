//
//  BasicUITextFieldWithDelegateViewController.swift
//  IOS10UITextField
//
//  Created by Arthit Thongpan on 3/4/17.
//  Copyright © 2017 Arthit Thongpan. All rights reserved.
//

import UIKit

class BasicUITextFieldWithDelegateViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    let maxLength = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup UITextField Delegate
        textField.delegate = self
        
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

extension BasicUITextFieldWithDelegateViewController: UITextFieldDelegate {

    // return NO to not change text
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard string.characters.count > 0 else {
            return true
        }
        
        let currentText = textField.text ?? ""
        let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)
        
        return allowedIntoTextField(text: prospectiveText)
    }
    
    func allowedIntoTextField(text: String) -> Bool {
        return text.characters.count <= maxLength
    }
    
}
