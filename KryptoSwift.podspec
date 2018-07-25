Pod::Spec.new do |s|
s.header_dir              = 'KryptoSwift'
s.name                    = 'KryptoSwift'
s.version                 = '1.0.1'

s.summary                 = 'KryptoSwift is a growing collection of standard and secure cryptographic algorithms implemented in Swift'

s.homepage                = 'https://github.com/msgrizz/KryptoSwift'
s.documentation_url       = 'https://github.com/msgrizz/KryptoSwif/blob/master/README.md'

s.license                 = { :type => 'MIT', :file => 'LICENSE.md' }

s.author                  = { 'Mihail Salari' => 'info@mihailsalari.com' }

s.source                  = { :git => 'https://github.com/msgrizz/KryptoSwift.git', :tag => s.version.to_s }

s.platform                = :ios, "8.1"
s.source_files            = 'KryptoSwift/**/*.{swift}'
s.frameworks              = 'UIKit', 'Foundation'
s.libraries               = 'xml2'
s.xcconfig         	  = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 
			      'OTHER_LDFLAGS' => '-lxml2' 
                            }

s.ios.deployment_target   = "8.0"

s.requires_arc 		  = true

s.preserve_paths = 'Pods/**/*'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/KryptoSwift/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/KryptoSwift/iphonesimulator',
    'SWIFT_VERSION' => '4.0'
  }

end
