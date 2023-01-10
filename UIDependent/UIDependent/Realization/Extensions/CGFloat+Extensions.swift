//
//  CGFloat+Extensions.swift
//  UIDependent
//
//  Created by Nikita Grishin on 10.01.23.
//

public extension CGFloat {
    static let canonicalHeight: CGFloat = 812
    static let canonicalWidth: CGFloat = 375
}

public extension CGFloat {
    func roundedTo(digits power: Int) -> CGFloat {
        let delimiter = pow(10.0, Double(power)).cgFloat
        return (self * delimiter).rounded(.toNearestOrEven) / delimiter
    }

    func dependent(multiplier: CGFloat, precision: Int = 2) -> CGFloat {
        (self * multiplier).roundedTo(digits: precision)
    }
}

extension CGFloat {
    func clamped(to range: Range<CGFloat>) -> CGFloat {
        Swift.max(Swift.min(range.upperBound, self), range.lowerBound)
    }
    
    func clamped(to range: PartialRangeThrough<CGFloat>) -> CGFloat {
        Swift.min(range.upperBound, self)
    }
    
    func clamped(to range: PartialRangeFrom<CGFloat>) -> CGFloat {
        Swift.max(range.lowerBound, self)
    }
}
