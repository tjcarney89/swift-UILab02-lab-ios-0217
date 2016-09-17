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
        case UIColor.red: return "red"
        case UIColor.blue: return "blue"
        case UIColor.yellow: return "yellow"
        case UIColor.purple: return "purple"
        case UIColor.orange: return "orange"
        case UIColor.green: return "green"
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
            case "red": paintColor = UIColor.red
            case "blue": paintColor = UIColor.blue
            case "yellow": paintColor = UIColor.yellow
            case "purple": paintColor = UIColor.purple
            case "orange": paintColor = UIColor.orange
            case "green": paintColor = UIColor.green
            default: assert(false, "Invalid paint color: \(newValue)")
            }
        }
    }
}

extension UISegmentedControl {
    var color: UIColor {
        switch selectedSegmentIndex {
        case 0: return UIColor.red
        case 1: return UIColor.yellow
        case 2: return UIColor.blue
        default: assert(false, "Invalid index: \(selectedSegmentIndex)")
        }
    }
}
