//
//  ViewController.swift
//  week 3
//
//  Created by Rowan Su on 2024/7/1.
//

import UIKit

class ViewController: UIViewController {

    var loginflow = true
    
    @IBOutlet weak var checkText: UITextField!
    @IBOutlet weak var check: UILabel!
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var passwordTxet: UITextField!
    @IBOutlet weak var segmentedControlColor: UISegmentedControl!
   
    @IBAction func LogIn(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            check.textColor = .darkGray
            checkText.backgroundColor = .darkGray
            checkText.isEnabled = false
            
        } else {
            check.textColor = .black
            checkText.backgroundColor = .white
            checkText.isEnabled = true
            loginflow = false
        }
    }
    
    @IBAction func execute(_ sender: Any) {
        if loginflow == true {
            if accountText.text == "appworks_school" && passwordTxet.text == "1234" {
            } else if accountText.text?.count == 0 && passwordTxet.text?.count  == 0 {
                let alert = UIAlertController(title: "Error", message: "Account and password should not be empty.", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            } else if accountText.text?.count == 0 {
                let alert = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            } else if passwordTxet.text?.count == 0 {
                let alert = UIAlertController(title: "Error", message: "Password should not be empty.", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            } else {
                let alert = UIAlertController(title: "Error", message: "Login fail", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            }
        }
        else {
            if accountText.text?.count == 0 {
                let alert = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            } else if passwordTxet.text?.count == 0 {
                let alert = UIAlertController(title: "Error", message: "Password should not be empty.", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            } else if checkText.text?.count == 0 {
                let alert = UIAlertController(title: "Error", message: "Check Password should not be empty.", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            } else if passwordTxet.text != checkText.text {
                let alert = UIAlertController(title: "Error", message: "Signup fail", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkText.isEnabled = false
        segmentedControlColor.selectedSegmentTintColor = .black
        segmentedControlColor.backgroundColor = UIColor.white
        segmentedControlColor.layer.borderColor = UIColor.black.cgColor
        segmentedControlColor.layer.borderWidth = 1
        let selectedTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        segmentedControlColor.setTitleTextAttributes(selectedTitleTextAttributes, for: .selected)
    }
    
}

extension ViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
}
