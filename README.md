# UIDependent

![CocoaPods Compatible](https://img.shields.io/badge/pod-v0.1.0-blue)
![Platform](https://img.shields.io/badge/platform-iOS-yellow)
![Swift 5.x](https://img.shields.io/badge/Swift-5.x-orange)

This repository contains a library with UI sizes converters for iOS development

## Requirements

- iOS 12.0+
- Xcode 10.3+
- Swift 5.1+

## Installation

UIDependent is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'UIDependent'
```

## Usage Example

This library provides an easy way to implement a screen size dependent UI. Canonical device is **iPhone X**, which has 812 points height and 375 points width.

```swift
/// You can automatically convert the UI sizes from the design according to the screen size of the running device:
view.frame.size = CGSize(width: 100.widthDependent(),
                         height: 100.heightDependent())
                         
/// You can automatically convert the font sizes from the design according to the screen height of the running device:
view.font = UIFont.boldSystemFont(ofSize: 18.fontSizeDependent())
```

If you need to use another values as the canonical height or width, you can pass them as arguments:

```swift
/// You can automatically convert the UI sizes from the design according to the screen size of the running device:
view.snp.makeConstraints {
    $0.height = 100.heightDependent(layoutHeight: 844)
    $0.width = 100.widthDependent(layoutWidth: 390)
}

/// You can automatically convert the font sizes from the design according to the screen height of the running device:
view.font = UIFont.boldSystemFont(ofSize: 18.fontSizeDependent(layoutHeight: 932))
```

Also, all methods have a `clamped` argument, which allows you to set the maximum and minimum size values:

```swift
view.frame.size = CGSize(width: 100.widthDependent(clamped: ...120),
                         height: 100.heightDependent(clamped: 80...))
                         
view.font = UIFont.boldSystemFont(ofSize: 10.fontSizeDependent(clamped: 8..<15))               
```

## Author

Nikita Grishin, nikita.hryshyn@yellow.systems
Yellow Team

## Contributors

Artsiom Sadyryn, artsiom.sadyryn@yellow.systems

## License

UIDependent is available under the MIT license. See the LICENSE file for more info.
