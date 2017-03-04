//
//  UITextFieldInsideTableViewController.swift
//  IOS10UITextField
//
//  Created by Arthit Thongpan on 3/4/17.
//  Copyright © 2017 Arthit Thongpan. All rights reserved.
//

import UIKit

class UITextFieldInsideTableViewController: UITableViewController {

    @IBOutlet weak var topicTextField: UITextField!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Navigation

    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        hideKeyboard()
        
        let title = topicTextField.text ?? ""
        let detail = detailTextView.text ?? ""
        let name = nameTextField.text ?? ""
        
        print(title, detail, name)
    }
    
    // MARK: - Private Methods
    
    func clearTextField() {
        topicTextField.text = ""
        detailTextView.text = ""
        nameTextField.text = ""
    }
    
    func hideKeyboard() {
        self.view.endEditing(true)
    }
}
