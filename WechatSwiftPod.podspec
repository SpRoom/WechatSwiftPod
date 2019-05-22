#
# Be sure to run `pod lib lint XQCPaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WechatSwiftPod'
  s.version          = '1.8.4.1'
  s.summary          = 'wechat pod framework swift support'
  s.swift_version = '4.2'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    wechat support
                       DESC

  s.homepage         = 'https://github.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'spec' => 'spectatornan@gmail.com' }
  s.source           = { :git => 'https://github.com/SpectatorNanWithZZC/WechatSwiftPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  #s.ios.deployment_target = '8.0'
  s.platform     = :ios, "9.0"
  s.requires_arc = true

  s.source_files = 'WechatSwiftPod/**/*'
  
  #s.resource = 'XQCPaySDK/Assets/*.bundle'
  
   #s.resource_bundles = {
   #    'XQCPaySDK' => ['XQCPaySDK/Assets/*.png']
   #}
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.static_framework = true

  s.libraries = 'sqlite3', 'c++', 'z.1.2.5'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CFNetwork', 'CoreGraphics', 'CFNetwork', 'Security'
  s.vendored_libraries = 'WechatSwiftPod/libWeChatSDK.a'
  #s.vendored_frameworks = 'XQCPaySDK/Frameworks/YSSDK.framework', 'XQCPaySDK/Frameworks/YSEPaySDK.framework'
  #s.public_header_files = 'XQCPaySDK/Frameworks/YSEPaySDK.framework/Headers/YSEPay.h'
  #s.private_header_files = 'XQCPaySDK/Frameworks/YSEPaySDK.framework/Headers/YSEPay.h'
  
  #s.preserve_path = 'XQCPaySDK/Frameworks/*'
  s.source_files  = "WechatSwiftPod/*.h", "WechatSwiftPod/*.modulemap"
  s.preserve_path = "WechatSwiftPod/WechatSwiftPod.modulemap"
  s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/WechatSwiftPod' }
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }


end
