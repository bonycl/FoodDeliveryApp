//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 04.02.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    override func start() {
        print("OnboardingCoordinator start")
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("OnboardingCoordinator finish")
    }
}

