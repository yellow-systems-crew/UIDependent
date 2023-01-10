Pod::Spec.new do |spec|
  spec.name             = 'UIDependent'
  spec.version          = '0.0.1'
  spec.summary          = 'Yellow Systems UI sizes converters for iOS development'

  spec.description      = <<-DESC
  This CocoaPods library makes it easy to convert UI sizes depending on screen size.
                       DESC

  spec.homepage         = 'https://github.com/yellow-systems-crew/UIDependent.git'
  spec.license          = { :type => 'MIT',
                            :file => 'LICENSE' }
  spec.author           = 'Yellow Team'
  spec.source           = { :git => 'https://github.com/yellow-systems-crew/UIDependent.git',
                            :tag => spec.version }

  spec.ios.deployment_target = '12.0'
  spec.swift_versions = '5.0'

  spec.source_files = 'UIDependent/UIDependent/Realization/**/*.{swift,h}'
end
