//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 04.02.2024.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    override func start() {
        print("HomeCoordinator start")
        let vc = ViewController()
        vc.view.backgroundColor = .gray
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("HomeCoordinator finish")
    }
}
