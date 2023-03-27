//
//  UIColorExtensions.swift
//  GitHubContributionsWidgetExtension
//
//  Created by Gregory Keeley on 3/14/23.
//

import UIKit
// MARK: -

extension UIColor {
    var inverted: UIColor {
        var a: CGFloat = 0.0, r: CGFloat = 0.0, g: CGFloat = 0.0, b: CGFloat = 0.0
        return getRed(&r, green: &g, blue: &b, alpha: &a) ? UIColor(red: 1.0-r, green: 1.0-g, blue: 1.0-b, alpha: a) : .black
    }
}
