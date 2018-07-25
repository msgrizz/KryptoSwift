Pod::Spec.new do |s|
s.header_dir              = 'KryptoSwift'
s.name                    = 'KryptoSwift'
s.version                 = '1.0.0'

s.summary                 = 'KryptoSwift is a growing collection of standard and secure cryptographic algorithms implemented in Swift
'

s.homepage                = 'https://github.com/msgrizz/KryptoSwift'
s.documentation_url       = 'https://github.com/msgrizz/KryptoSwif/blob/master/README.md'

s.license                 = { :type => 'MIT',
:file => 'LICENSE.md' }

s.authors                 = { 'Mihail Salari' => 'info@mihailsalari.com' }

s.source                  = { :git => 'https://github.com/msgrizz/KryptoSwift.git', :tag => s.version.to_s }

s.platform                = :ios, "8.1"
s.source_files            = 'KryptoSwift/*.{h,}', 'KryptoSwift/include/**/*.h'
s.private_header_files    = 'KryptoSwift/include/**/*.h'
s.requires_arc            = true
s.frameworks              = 'UIKit', 'Foundation'

s.ios.deployment_target   = "7.0"
s.ios.vendored_library    = 'KryptoSwift/lib/*.a'
'CLANG_CXX_LIBRARY' => 'compiler-default' }

end
