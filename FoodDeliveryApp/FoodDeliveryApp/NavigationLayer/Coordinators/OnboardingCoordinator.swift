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
        showOnboarding()
    }
    override func finish() {
        print("OnboardingCoordinator finish")
    }
}

private extension OnboardingCoordinator {
    func showOnboarding() {
        var pages = [OnboardingPartViewController]()
        
        let firstVC = OnboardingPartViewController()
        firstVC.imageToShow = UIImage(resource: .chickenLeg)
        firstVC.titleText = "Delicious Food"
        firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        firstVC.buttonText = "Next"
       
       
        let secondVC = OnboardingPartViewController()
        secondVC.imageToShow = UIImage(resource: .shipped)
        secondVC.titleText = "Fast Shipping"
        secondVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        secondVC.buttonText = "Next"
        
        
        let thirdVC = OnboardingPartViewController()
        thirdVC.imageToShow = UIImage(resource: .medal)
        thirdVC.titleText = "Certificate Food"
        thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id."
        thirdVC.buttonText = "Next"
        
        let forthVC = OnboardingPartViewController()
        forthVC.imageToShow = UIImage(resource: .creditCard)
        forthVC.titleText = "Payment Online"
        forthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa."
        forthVC.buttonText = "Done"
        
        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        pages.append(forthVC)
        
        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

