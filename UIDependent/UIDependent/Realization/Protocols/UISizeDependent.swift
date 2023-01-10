//
//  UISizeDependent.swift
//  UIDependent
//
//  Created by Nikita Grishin on 10.01.23.
//

import UIKit

public protocol UISizeDependent {
    /// Device's screen width dependent value
    func widthDependent(layoutWidth: CGFloat) -> CGFloat

    /// Device's screen height dependent value
    func heightDependent(layoutHeight: CGFloat) -> CGFloat

    /// Device's screen font size height dependent value
    func fontSizeDependent(layoutHeight: CGFloat) -> CGFloat
    
    /// Device's screen font size width dependent value
    func fontSizeWidthDependent(layoutWidth: CGFloat) -> CGFloat
}

extension Float: UISizeDependent { }
extension Double: UISizeDependent { }
extension Int: UISizeDependent { }
extension CGFloat: UISizeDependent { }
extension UInt: UISizeDependent { }
