//
//  ConversationsViewController.swift
//  Messager
//  Conversations: Các cuộc trò chuyện
//  Created by Nguyễn Văn Hiếu on 5/12/24.
//

import UIKit

public let storyboard = UIStoryboard(name: "Main", bundle: nil)

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            if let vc = storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as? WelcomeViewController {
                vc.modalPresentationStyle = .fullScreen
                present(vc, animated: true, completion: nil)
            }
        }
        
    }


}

