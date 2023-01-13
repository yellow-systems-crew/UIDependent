//
//  CanonicalSizeProvidable.swift
//  UIDependent
//
//  Created by Nikita Grishin on 13.01.23.
//

public protocol CanonicalSizeProvidable {
    /// Canonical device's screen height value
    static var canonicalHeight: CGFloat { get }
    
    /// Canonical device's screen width value
    static var canonicalWidth: CGFloat { get }
}

public extension CanonicalSizeProvidable {
    static var canonicalHeight: CGFloat { 812 } // iPhone X height
    static var canonicalWidth: CGFloat { 375 } // iPhone X width
}
