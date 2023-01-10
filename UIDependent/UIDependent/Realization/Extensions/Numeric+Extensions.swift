//
//  Numeric+Extensions.swift
//  UIDependent
//
//  Created by Nikita Grishin on 10.01.23.
//

import UIKit.UIScreen

extension Numeric {
    var cgFloat: CGFloat {
        let offset: CGFloat
        if let amount = self as? Float {
            offset = CGFloat(amount)
        } else if let amount = self as? Double {
            offset = CGFloat(amount)
        } else if let amount = self as? CGFloat {
            offset = CGFloat(amount)
        } else if let amount = self as? Int {
            offset = CGFloat(amount)
        } else if let amount = self as? UInt {
            offset = CGFloat(amount)
        } else {
            offset = 0.0
        }
        return offset
    }

    func widthMultiplier(layoutWidth: CGFloat) -> CGFloat {
        UIScreen.main.bounds.width / layoutWidth
    }

    func heightMultiplier(layoutHeight: CGFloat) -> CGFloat {
        UIScreen.main.bounds.height / layoutHeight
    }

    func fontSizeMultiplier(layoutHeight: CGFloat) -> CGFloat {
        let heightMultiplier = self.heightMultiplier(layoutHeight: layoutHeight)
        return heightMultiplier >= 1 ? heightMultiplier : heightMultiplier * 1.2
    }
}
