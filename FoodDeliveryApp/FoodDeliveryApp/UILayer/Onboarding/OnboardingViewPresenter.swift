//
//  OnboardingViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 04.02.2024.
//

import UIKit

protocol OnboardingViewOutput: AnyObject {
    func onboardingFinish()
}

class OnboardingViewPresenter: OnboardingViewOutput {
    
    private let userStorage = UserStorage.shared
    
    //MARK: - Properties
    weak var coordinator: OnboardingCoordinator!
    
    init(coordinator: OnboardingCoordinator!) {
        self.coordinator = coordinator
    }
    
    
    func onboardingFinish() {
        coordinator.finish()
        userStorage.passedOnboarding = true
    }
    
    
}
