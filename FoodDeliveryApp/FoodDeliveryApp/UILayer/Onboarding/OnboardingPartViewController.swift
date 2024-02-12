//
//  OnboardingPartViewController.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 04.02.2024.
//

import UIKit
//MARK: - OnboardingPartViewController
class OnboardingPartViewController: UIViewController {
    
    //MARK: - Properties
    var imageToShow: UIImage? {
        didSet {
            imageView.image = imageToShow
        }
    }
    var titleText: String? {
        didSet {
            titlelabel.text = titleText
        }
    }
    
    var descriptionText: String? {
        didSet {
            descriptionLabel.text = descriptionText
        }
    }
    
    var buttonText: String?
    
  
    
    //MARK: - View
    private let imageView = UIImageView()
    private let titlelabel = UILabel()
    private let descriptionLabel = UILabel()
   
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }

}

//MARK: - Layout
private extension OnboardingPartViewController {
    func setupLayout() {
        setupView()
        setupImageView()
        setupTitleLabel()
        setupDescription()
       
    }
    
    func setupView() {
        view.backgroundColor = AppColors.accentOrange
    }
    
    func setupImageView() {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func setupTitleLabel() {
        view.addSubview(titlelabel)
        titlelabel.translatesAutoresizingMaskIntoConstraints = false
        titlelabel.font = UIFont.roboto(ofSize: 24, weight: .bold)
        titlelabel.textColor = AppColors.white
        titlelabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titlelabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            titlelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
    
    func setupDescription() {
        view.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.font = UIFont.roboto(ofSize: 14, weight: .regular )
        descriptionLabel.textColor = AppColors.white
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
    
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: titlelabel.bottomAnchor, constant: 23),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 71),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -72)
        ])
    }
    
}
