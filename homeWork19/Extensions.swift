//
//  Extensions.swift
//  homeWork19
//
//  Created by Dato on 21.07.22.
//

import Foundation
import UIKit

extension UIView{
    var width: CGFloat{
        return frame.size.width
    }
    var height: CGFloat{
        return frame.size.height
    }
    var left: CGFloat{
        return frame.origin.x
    }
    var right: CGFloat{
        return left + width
    }
    var top: CGFloat{
        return frame.origin.y
    }
    var bottom: CGFloat{
        return top + height
    }
    
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
            return self.applyGradient(colours: colours, locations: nil)
        }
    
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
           let gradient: CAGradientLayer = CAGradientLayer()
           gradient.frame = self.bounds
           gradient.colors = colours.map { $0.cgColor }
           gradient.locations = locations
           self.layer.insertSublayer(gradient, at: 0)
           return gradient
       }
    
}
