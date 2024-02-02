//
//  UIColor+Extension.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 02.02.2024.
//

import UIKit

extension UIColor {
    func hex(_ hex: UInt64) -> UIColor {
        return UIColor(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0))
    }
}
