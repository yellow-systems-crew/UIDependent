//
//  UISizeDependent+Extensions.swift
//  UIDependent
//
//  Created by Nikita Grishin on 10.01.23.
//

public extension UISizeDependent where Self: Numeric {
    /// Device's screen width dependent value
    func widthDependent(layoutWidth: CGFloat = .canonicalWidth) -> CGFloat {
        cgFloat.dependent(multiplier: widthMultiplier(layoutWidth: layoutWidth))
    }

    /// Device's screen height dependent value
    func heightDependent(layoutHeight: CGFloat = .canonicalHeight) -> CGFloat {
        cgFloat.dependent(multiplier: heightMultiplier(layoutHeight: layoutHeight))
    }

    /// Device's screen font size height dependent value
    func fontSizeDependent(layoutHeight: CGFloat = .canonicalHeight) -> CGFloat {
        cgFloat.dependent(multiplier: heightMultiplier(layoutHeight: layoutHeight))
    }
    
    /// Device's screen font size width dependent value
    func fontSizeWidthDependent(layoutWidth: CGFloat = .canonicalWidth) -> CGFloat {
        cgFloat.dependent(multiplier: widthMultiplier(layoutWidth: layoutWidth))
    }
    
    // MARK: Clamped
    
    /// Device's screen width dependent value with range bounds
    func widthDependent(layoutWidth: CGFloat = .canonicalWidth, clamped bounds: Range<CGFloat>) -> CGFloat {
        widthDependent(layoutWidth: layoutWidth).clamped(to: bounds)
    }

    /// Device's screen height dependent value with range bounds
    func heightDependent(layoutHeight: CGFloat = .canonicalHeight, clamped bounds: Range<CGFloat>) -> CGFloat {
        heightDependent(layoutHeight: layoutHeight).clamped(to: bounds)
    }

    /// Device's screen font size height dependent value with range bounds
    func fontSizeDependent(layoutHeight: CGFloat = .canonicalHeight, clamped bounds: Range<CGFloat>) -> CGFloat {
        fontSizeDependent(layoutHeight: layoutHeight).clamped(to: bounds)
    }
    
    /// Device's screen font size width dependent value with range bounds
    func fontSizeWidthDependent(layoutWidth: CGFloat = .canonicalWidth, clamped bounds: Range<CGFloat>) -> CGFloat {
        fontSizeWidthDependent(layoutWidth: layoutWidth).clamped(to: bounds)
    }
    
    /// Device's screen width dependent value with range bounds
    func widthDependent(layoutWidth: CGFloat = .canonicalWidth, clamped bounds: PartialRangeThrough<CGFloat>) -> CGFloat {
        widthDependent(layoutWidth: layoutWidth).clamped(to: bounds)
    }
    
    /// Device's screen height dependent value with range bounds
    func heightDependent(layoutHeight: CGFloat = .canonicalHeight, clamped bounds: PartialRangeThrough<CGFloat>) -> CGFloat {
        heightDependent(layoutHeight: layoutHeight).clamped(to: bounds)
    }

    /// Device's screen font size height dependent value with range bounds
    func fontSizeDependent(layoutHeight: CGFloat = .canonicalHeight, clamped bounds: PartialRangeThrough<CGFloat>) -> CGFloat {
        fontSizeDependent(layoutHeight: layoutHeight).clamped(to: bounds)
    }
    
    /// Device's screen font size width dependent value with range bounds
    func fontSizeWidthDependent(layoutWidth: CGFloat = .canonicalWidth, clamped bounds: PartialRangeThrough<CGFloat>) -> CGFloat {
        fontSizeWidthDependent(layoutWidth: layoutWidth).clamped(to: bounds)
    }
    
    /// Device's screen width dependent value with range bounds
    func widthDependent(layoutWidth: CGFloat = .canonicalWidth, clamped bounds: PartialRangeFrom<CGFloat>) -> CGFloat {
        widthDependent(layoutWidth: layoutWidth).clamped(to: bounds)
    }
    
    /// Device's screen height dependent value with range bounds
    func heightDependent(layoutHeight: CGFloat = .canonicalHeight, clamped bounds: PartialRangeFrom<CGFloat>) -> CGFloat {
        heightDependent(layoutHeight: layoutHeight).clamped(to: bounds)
    }

    /// Device's screen font size height dependent value with range bounds
    func fontSizeDependent(layoutHeight: CGFloat = .canonicalHeight, clamped bounds: PartialRangeFrom<CGFloat>) -> CGFloat {
        fontSizeDependent(layoutHeight: layoutHeight).clamped(to: bounds)
    }
    
    /// Device's screen font size width dependent value with range bounds
    func fontSizeWidthDependent(layoutWidth: CGFloat = .canonicalWidth, clamped bounds: PartialRangeFrom<CGFloat>) -> CGFloat {
        fontSizeWidthDependent(layoutWidth: layoutWidth).clamped(to: bounds)
    }
}
