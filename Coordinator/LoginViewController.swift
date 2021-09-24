//
//  LoginViewController.swift
//  Coordinator
//
//  Created by Sergei Romanchuk on 24.09.2021.
//

import UIKit

class LoginViewController: UIViewController, StoryboardProtocol {
    
    weak var coordinator: ApplicationCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        coordinator?.redirectDashboard()
    }
    
    @IBAction func register(_ sender: Any) {
        coordinator?.redirectRegister()
    }
    
    deinit {
        print("\(type(of: self)) deinited.")
    }

}
