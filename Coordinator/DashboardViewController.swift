//
//  DashboardViewController.swift
//  Coordinator
//
//  Created by Sergei Romanchuk on 24.09.2021.
//

import UIKit

class DashboardViewController: UIViewController, StoryboardProtocol {
    
    weak var coordinator: DashboardCoordinator?
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinish()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("\(type(of: self)) deinited.")
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
