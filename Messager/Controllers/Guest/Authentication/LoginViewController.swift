//
//  LoginViewController.swift
//  Messager
//
//  Created by Nguyễn Văn Hiếu on 6/12/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var emailField: UITextField! // or phone num field
    @IBOutlet weak var passwordField: UITextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        login()
    }
    
    // MARK: - Login Handling Method
    private func login() {
        guard let email = emailField.text,
              !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              let password = passwordField.text,
              !password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              password.count >= 8
        else {
            alertUserLoginError()
            return
        }
        
        // Firebase Log In
    }
    
    // MARK: - Alert User Login Error
    private func alertUserLoginError() {
        let alert = UIAlertController(title: "Woops",
                                      message: "Please enter all information to login",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss",
                                      style: .cancel,
                                      handler: nil))
        present(alert, animated: true)
    }
    
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == emailField {
            passwordField.becomeFirstResponder()
        } else if textField == passwordField {
            login()
        }
        
        return true
    }
}
