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
}

extension UIViewController {
    
    func verifyUrl(urlString: String?) -> Bool {
        if let urlString = urlString {
            return true
        }
        return false
    }
}
