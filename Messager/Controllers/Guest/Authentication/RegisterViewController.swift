//
//  RegisterViewController.swift
//  Messager
//
//  Created by Nguyễn Văn Hiếu on 6/12/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var newPasswordField: UITextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameField.delegate = self
        lastNameField.delegate = self
        phoneNumberField.delegate = self
        newPasswordField.delegate = self
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        register()
    }
    
    // MARK: - Register Handling Method
    private func register() {
        guard let firstName = firstNameField.text,
              !firstName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              let lastName = lastNameField.text,
              !lastName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              let phoneNumber = phoneNumberField.text,
              !phoneNumber.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              let password = newPasswordField.text,
              !password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              password.count >= 8
        else {
            alertUserRegisterError()
            return
        }
        
        // TODO: - Add: spinner
        // loading indicator
        
        // Firebase Resiter
    }
    
    // MARK: - Alert User Register Error
    private func alertUserRegisterError() {
        let alert = UIAlertController(title: "Woops",
                                      message: "Please enter all information to a new account",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss",
                                      style: .cancel,
                                      handler: nil))
        present(alert, animated: true)
    }
    
    
    
}

// MARK: - UITextFieldDelegate
extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case firstNameField:
            lastNameField.becomeFirstResponder()
        case lastNameField:
            phoneNumberField.becomeFirstResponder()
        case phoneNumberField:
            newPasswordField.becomeFirstResponder()
        case newPasswordField:
            register()
            return true
        default:
            return false
        }
        return true
    }
}
