//
//  SceneFactory.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 12.02.2024.
//

import UIKit

struct SceneFactory {
    
    //MARK: - Onboarding flow
    static func makeOnboardingFlow(coordinator: AppCoordinator, finishDelegate: CoordinatorFinishDelegate, navigationController: UINavigationController) {
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding,
                                                          navigationController: navigationController,
                                                          finishDelegate: finishDelegate)
        coordinator.addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }
    
    static func makeOnboardingScene(coordinator: OnboardingCoordinator) -> OnboardingViewController {
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
        
        let presenter = OnboardingViewPresenter(coordinator: coordinator)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        
        return viewController
    }
    
    //MARK: - MainFlow
    static func makeMainFlow(coordinator: AppCoordinator, finishDelegate: CoordinatorFinishDelegate) -> TabBarController {
        
        
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(type: .home,
                                              navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home",
                                                           image: UIImage.init(systemName: "house.fill"),
                                                           tag: 0)
        homeCoordinator.finishDelegate = finishDelegate
        homeCoordinator.start()
        
        let orderNavigationController = UINavigationController()
        let orderCoordinator = OrderCoordinator(type: .order,
                                                navigationController: orderNavigationController)
        orderNavigationController.tabBarItem = UITabBarItem(title: "Order",
                                                            image: UIImage.init(systemName: "house.fill"),
                                                            tag: 1)
        orderCoordinator.finishDelegate = finishDelegate
        orderCoordinator.start()
        
        let listNavigationController = UINavigationController()
        let listCoordinator = ListCoordinator(type: .list,
                                              navigationController: listNavigationController)
        listNavigationController.tabBarItem = UITabBarItem(title: "My List",
                                                           image: UIImage.init(systemName: "house.fill"),
                                                           tag: 2)
        listCoordinator.finishDelegate = finishDelegate
        listCoordinator.start()
        
        let profileNavigationController = UINavigationController()
        let profileCoordinator = ProfileCoordinator(type: .profile, navigationController: profileNavigationController)
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile",
                                                              image: UIImage.init(systemName: "house.fill"),
                                                              tag: 3)
        profileCoordinator.finishDelegate = finishDelegate
        profileCoordinator.start()
        
        coordinator.addChildCoordinator(homeCoordinator)
        coordinator.addChildCoordinator(orderCoordinator)
        coordinator.addChildCoordinator(listCoordinator)
        coordinator.addChildCoordinator(profileCoordinator)
        //unite all  - to array
        let tabBarControllers = [homeNavigationController,
                                 orderNavigationController,
                                 listNavigationController,
                                 profileNavigationController]
        
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        return tabBarController
    }
}
