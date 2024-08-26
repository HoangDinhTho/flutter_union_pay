#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint union_pay.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'union_pay'
  s.version          = '3.5.0'
  s.summary          = 'A Flutter plugin for allowing developers to pay with native Android&iOS UnionPay SDKs.'
  s.description      = <<-DESC
  A Flutter plugin for allowing developers to pay with native Android&iOS UnionPay SDKs.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'

  s.frameworks = ['CFNetwork', 'SystemConfiguration']
  s.libraries = 'z','c++'
  s.dependency 'Flutter'
  s.static_framework = true
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # Inorder to add a frameworks
  s.preserve_paths = 'UPPaymentControlMini.xcframework/**/*'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework UPPaymentControlMini' }
  s.vendored_frameworks = 'UPPaymentControlMini.xcframework'
  
  # # Inorder to add multiple frameworks
  # s.preserve_paths = ['xxxxxx.xcframework/**/*', 'yyyyyy.xcframework/**/*']
  # s.xcconfig = { 'OTHER_LDFLAGS' => ['-framework xxxxxx', '-framework yyyyyy'] }
  # s.vendored_frameworks = ['xxxxxx.xcframework', 'yyyyyy.xcframework']

  # please Pod install --repo-update

end
