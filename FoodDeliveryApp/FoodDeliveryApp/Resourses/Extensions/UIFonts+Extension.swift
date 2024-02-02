//
//  UIFonts+Extension.swift
//  FoodDeliveryApp
//
//  Created by Dinar Shakirov on 02.02.2024.
//

import UIKit

//extension UIFont {
    
//    enum Roboto {
//        enum black {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.black, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum blackItalic {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.blackItalic, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum bold {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.bold, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum boldItalic {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.boldItalic, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum italic {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.italic, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum light {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.light, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum lightItalic {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.lightItalic, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum medium {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.medium, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum mediumItalic {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.mediumItalic, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum regular {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.regular, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum thin {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.thin, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//        enum thinItalic {
//            static func size(of size: CGFloat) -> UIFont {
//                return UIFont(name: Constants.Roboto.thinItalic, size: size) ?? systemFont(ofSize: size)
//            }
//        }
//    }
//}

extension UIFont {
    
    enum Roboto: String {
            case black = "Roboto-Black.ttf"
            case blackItalic = "Roboto-BlackItalic"
            case bold = "Roboto-Bold"
            case boldItalic = "Roboto-BoldItalic"
            case italic = "Roboto-Italic"
            case light = "Roboto-Light"
            case lightItalic = "Roboto-LightItalic"
            case medium = "Roboto-Medium"
            case mediumItalic = "Roboto-MediumItalic"
            case regular = "Roboto-Regular"
            case thin = "Roboto-Thin"
            case thinItalic = "Roboto-ThinItalic"
        }
    
    class func roboto(ofSize fontSize: CGFloat, weight: Roboto) -> UIFont {
        return UIFont(name: weight.rawValue, size: fontSize) ?? systemFont(ofSize: fontSize)
    }
}



//
//private extension UIFont {
//    enum Constants {
//        enum Roboto {
//            static let black = "Roboto-Black"
//            static let blackItalic = "Roboto-BlackItalic"
//            static let bold = "Roboto-Bold"
//            static let boldItalic = "Roboto-BoldItalic"
//            static let italic = "Roboto-Italic"
//            static let light = "Roboto-Light"
//            static let lightItalic = "Roboto-LightItalic"
//            static let medium = "Roboto-Medium"
//            static let mediumItalic = "Roboto-MediumItalic"
//            static let regular = "Roboto-Regular"
//            static let thin = "Roboto-Thin"
//            static let thinItalic = "Roboto-ThinItalic"
//        }
//    }
//}
