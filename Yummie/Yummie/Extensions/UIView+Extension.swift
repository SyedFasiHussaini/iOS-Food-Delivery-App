//
//  UIView+Extension.swift
//  Yummie
//
//  Created by Syed Fasiullah Hussaini on 09/03/24.
//

import UIKit

extension UIView {
    
  @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.cornerRadius
        }
        
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
