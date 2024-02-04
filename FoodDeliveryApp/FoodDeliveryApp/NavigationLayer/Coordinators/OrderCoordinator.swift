//
//  OrderCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 04.02.2024.
//

import UIKit

class OrderCoordinator: Coordinator {
    
    override func start() {
        print("OrderCoordinator start")
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("OrderCoordinator finish")
    }
}
