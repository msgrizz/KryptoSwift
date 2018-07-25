Pod::Spec.new do |s|
s.header_dir              = 'KryptoSwift'
s.name                    = 'KryptoSwift'
s.version                 = '1.0.1'

s.summary                 = 'KryptoSwift is a growing collection of standard and secure cryptographic algorithms implemented in Swift'

s.homepage                = 'https://github.com/msgrizz/KryptoSwift'
s.documentation_url       = 'https://github.com/msgrizz/KryptoSwif/blob/master/README.md'

s.license                 = { :type => 'MIT', :file => 'LICENSE.md' }

s.author                 = { 'Mihail Salari' => 'info@mihailsalari.com' }

s.source                  = { :git => 'https://github.com/msgrizz/KryptoSwift.git', :tag => s.version.to_s }

s.platform                = :ios, "8.1"
s.source_files            = 'KryptoSwift/*.{h,m,mm,swift}', 'KryptoSwift/include/**/*.{h,m,mm,swift}'
s.private_header_files    = 'KryptoSwift/include/**/*.{h,m,mm,swift}'
s.requires_arc            = true
s.frameworks              = 'UIKit', 'Foundation'

s.ios.deployment_target   = "8.0"

end
