Pod::Spec.new do |s|
  s.name             = "KryptoSwift"
  s.summary          = "CommonCrypto in Swift"
  s.version          = "1.0.0"
  s.homepage         = "https://github.com/msgrizz/KryptoSwift"
  s.license          = 'MIT'
  s.author           = { "Khoa Pham" => "info@mihailsalari.com" }
  s.source           = {
    :git => "https://github.com/msgrizz/KryptoSwift.git",
    :tag => s.version.to_s
  }
  s.social_media_url = 'https://fb.com/new.mihailsalari'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.2'
  s.watchos.deployment_target = '3.0'

  s.requires_arc = true
  s.source_files = 'Sources/**/*.swift'

  s.preserve_paths = 'CocoaPods/**/*'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_ROOT)/KryptoSwift/CocoaPods/macosx',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/KryptoSwift/CocoaPods/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/KryptoSwift/CocoaPods/iphonesimulator',
    'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_ROOT)/KryptoSwift/CocoaPods/appletvos',
    'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/KryptoSwift/CocoaPods/appletvsimulator',
    'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_ROOT)/KryptoSwift/CocoaPods/watchos',
    'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_ROOT)/KryptoSwift/CocoaPods/watchsimulator',
    'SWIFT_VERSION' => '4.0'
  }

end
