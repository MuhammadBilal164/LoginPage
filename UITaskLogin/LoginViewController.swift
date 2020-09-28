//
//  LoginViewController.swift
//  UITaskLogin
//
//  Created by Umer Farooq on 28/09/2020.
//  Copyright © 2020 Umer Farooq. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    //MARK:- IBOutlets
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var emailTextField: AMTitledTextField!
    @IBOutlet weak var passwordTextField: AMTitledTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        loginBtn.layer.cornerRadius = 12
        emailTextField.delegate = self
        passwordTextField.delegate = self
        emailTextField.becomeFirstResponder()
        
        
    }
    
    
    
    //MARK:- Helper Methods
    @IBAction func loginBtn(_ sender: Any) {
        
    }
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
}
extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == emailTextField{
            textField.becomeFirstResponder()
            emailTextField.borderColor = .blue
        }
        if textField == passwordTextField{
            passwordTextField.borderColor = .blue
            passwordTextField.becomeFirstResponder()
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == emailTextField{
            emailTextField.borderColor = .darkGray
            emailTextField.resignFirstResponder()
        }
        if textField == passwordTextField{
            passwordTextField.borderColor = .darkGray
            passwordTextField.resignFirstResponder()
        }
    }
}
