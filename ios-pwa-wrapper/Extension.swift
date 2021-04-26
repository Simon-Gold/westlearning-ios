//
//  Extension.swift
//  ios-pwa-wrapper
//
//  Created by MIHIR PIPERMITWALA on 20/04/21.
//  Copyright © 2021 Martin Kainzbauer. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
}

extension UIViewController {
    
    func verifyUrl(urlString: String?) -> Bool {
        if let urlString = urlString, urlString.count > 0 {
            return true
        }
        return false
    }
}
