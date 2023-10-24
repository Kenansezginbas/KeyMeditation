//
//  Color+Extensions.swift
//  KeyMeditation
//
//  Created by Kenan Sezginbaş on 22.10.2023.
//

import UIKit

extension UIColor {

    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat
        let start: String.Index
        let hexColor: String

        if hex.hasPrefix("#") {
            start = hex.index(hex.startIndex, offsetBy: 1)
            hexColor = String(hex[start...])
        } else {
            hexColor = hex
        }

        if hexColor.count == 6 {
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0

            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xFF0000) >> 16) / 255
                g = CGFloat((hexNumber & 0x00FF00) >> 8) / 255
                b = CGFloat(hexNumber & 0x0000FF) / 255
                a = 1.0

                self.init(red: r, green: g, blue: b, alpha: a)
                return
            }
        } else if hexColor.count == 8 {
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0

            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xFF000000) >> 24) / 255
                g = CGFloat((hexNumber & 0x00FF0000) >> 16) / 255
                b = CGFloat((hexNumber & 0x0000FF00) >> 8) / 255
                a = CGFloat(hexNumber & 0x000000FF) / 255

                self.init(red: r, green: g, blue: b, alpha: a)
                return
            }
        }

        return nil
    }
}
