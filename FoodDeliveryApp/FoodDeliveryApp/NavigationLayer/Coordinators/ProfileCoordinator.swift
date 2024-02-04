//
//  ProfileCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 04.02.2024.
//

import UIKit

class ProfileCoordinator: Coordinator {
    
    override func start() {
        print("ProfileCoordinator start")
        let vc = ViewController()
        vc.view.backgroundColor = .black
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("ProfileCoordinator finish")
    }
}
