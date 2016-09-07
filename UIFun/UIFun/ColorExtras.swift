//
//  ColorExtras.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

extension UIColor {
    var name: String {
        switch self {
        case UIColor.redColor(): return "red"
        case UIColor.blueColor(): return "blue"
        case UIColor.yellowColor(): return "yellow"
        case UIColor.purpleColor(): return "purple"
        case UIColor.orangeColor(): return "orange"
        case UIColor.greenColor(): return "green"
        default: assert(false, "Invalid paint color: \(self)")
        }
    }
}

extension UIView {
    var paintColor: UIColor {
        get {
            return backgroundColor!
        }
        set {
            backgroundColor = newValue
        }
    }

    var paintColorName: String {
        get {
            return paintColor.name
        }
        set {
            switch newValue {
            case "red": paintColor = UIColor.redColor()
            case "blue": paintColor = UIColor.blueColor()
            case "yellow": paintColor = UIColor.yellowColor()
            case "purple": paintColor = UIColor.purpleColor()
            case "orange": paintColor = UIColor.orangeColor()
            case "green": paintColor = UIColor.greenColor()
            default: assert(false, "Invalid paint color: \(newValue)")
            }
        }
    }
}

extension UISegmentedControl {
    var color: UIColor {
        switch selectedSegmentIndex {
        case 0: return UIColor.redColor()
        case 1: return UIColor.yellowColor()
        case 2: return UIColor.blueColor()
        default: assert(false, "Invalid index: \(selectedSegmentIndex)")
        }
    }
}
