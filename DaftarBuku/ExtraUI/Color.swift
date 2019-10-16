//
//  Color.swift
//  DaftarBuku
//
//  Created by sayyid maulana khakul yakin on 10/17/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

struct ColorTheme {
    
    static let MainTheme = UIColor(netHex: 0x0076b6)
    static let MainBackground = UIColor(netHex: 0xffffff)
    static let TranslucentMainTheme = UIColor(white: 0x0076b6, alpha: 0.5)
    static let ChatGuestBackground = UIColor(netHex: 0x84c664)
    static let ChatOwnerBackground = UIColor(netHex: 0x979797)
    
    static let DarkText = UIColor(netHex: 0x65666f) // Black text slateGrey
    static let LightText = UIColor(netHex: 0x95a2b1) // Gray text
    static let TitleText = UIColor(netHex: 0xffffff) // White text
    static let InfoText = UIColor(netHex: 0x0076b6) // Blue text oceanBlue
    static let ConfirmText = UIColor(netHex: 0x00acbd) // Quoise Blue text turquoiseBlue
    static let ErrorText = UIColor(netHex: 0xd0021b) // Red text scarlet
    static let SuccessText = UIColor(netHex: 0x84c661) // Green text turtleGreen
    
    static let Main = UIColor(netHex: 0x0076b6) // Blue background oceanBlue
    static let Success = UIColor(netHex: 0x84c661) // Green background turtleGreen
    static let Dangerous = UIColor(netHex: 0xd0021b) // Red background scarlet
    static let Cancel = UIColor(netHex: 0x8f8e98) // Gray background purpleyGrey
    static let Confirm = UIColor(netHex: 0x00acbd) // Quoise Blue background turquoiseBlue
    static let Blank = UIColor(netHex: 0xffffff) // White background
    
    static let LightGrey = UIColor(netHex: 0x8f8e98) // purpleyGrey
    static let MediumGrey = UIColor(netHex: 0x65666f) // slateGrey
    static let DarkGrey = UIColor(netHex: 0x3a3a3f) // charcoalGrey
    
    static let LightGray = UIColor(netHex: 0xc0bfbf) // pinkishGrey
    static let MediumGray = UIColor(netHex: 0x9b9b9b) // warmGray
    
    static let VeryLightPurple = UIColor(netHex: 0xf4f4fd) // veryLightPurple
    static let LightPurple = UIColor(netHex: 0xddddea) // paleGrey
    static let VeryLightBlue = UIColor(netHex: 0xc7c7d5) // cloudyBlue
    
    static let Red = UIColor(netHex: 0x9f0404) // deepRed
    static let Orange = UIColor(netHex: 0xf3ac49) // fadedOrange
    static let DarkOrange = UIColor(netHex: 0xF5A623) // darkOrange
    static let Done = UIColor(netHex: 0x00ADC6) // Blue Ocean Tosca
}

extension UIColor {

    convenience init(red: Int, green: Int, blue: Int, alphaChannel: CGFloat) {
        self.init(red: CGFloat(red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0,
                  alpha: alphaChannel)
    }

    convenience init(netHex: Int, alpha: CGFloat = 1.0) {
        self.init(red: (netHex >> 16) & 0xff,
                  green: (netHex >> 8) & 0xff,
                  blue: netHex & 0xff,
                  alphaChannel: alpha)
    }

    func toColor(_ color: UIColor, percentage: CGFloat) -> UIColor {
        let percentage = max(min(percentage, 100), 0) / 100
        switch percentage {
        case 0: return self
        case 1: return color
        default:
            var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
            var (r2, g2, b2, a2): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
            guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return self }
            guard color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2) else { return self }
            
            return UIColor(red: CGFloat(r1 + (r2 - r1) * percentage),
                           green: CGFloat(g1 + (g2 - g1) * percentage),
                           blue: CGFloat(b1 + (b2 - b1) * percentage),
                           alpha: CGFloat(a1 + (a2 - a1) * percentage))
        }
    }
}



