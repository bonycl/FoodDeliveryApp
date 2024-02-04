//
//  ListCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 04.02.2024.
//

import UIKit

class ListCoordinator: Coordinator {
    
    override func start() {
        print("ListCoordinator start")
        let vc = ViewController()
        vc.view.backgroundColor = .green
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("ListCoordinator finish")
    }
}
