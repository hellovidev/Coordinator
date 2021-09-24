//
//  StoryboardProtocol.swift
//  Coordinator
//
//  Created by Sergei Romanchuk on 24.09.2021.
//

import UIKit

enum Storyboard: String {
    case main = "Main"
}

protocol StoryboardProtocol {
    static func instantiate() -> Self
}

extension StoryboardProtocol where Self: UIViewController {
    
    static func instantiate<T: UIViewController>() -> T {
        let storyboard = UIStoryboard(name: Storyboard.main.rawValue, bundle: Bundle.main)

        let className = String(describing: T.self)

        // Instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! T
    }
    
}
