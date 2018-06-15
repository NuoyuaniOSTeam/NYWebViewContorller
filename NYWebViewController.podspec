#
#  Be sure to run `pod spec lint NYWebViewController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "NYWebViewController"
  s.version      = "1.0.0"
  s.summary      = "NYWebViewContorller base on WKWebView"
  s.description  = "NYWebViewContorller base on WKWebView, addtion with cocoapod support."
  s.homepage     = "https://github.com/NuoyuaniOSTeam/NYWebViewContorller"
# s.social_media_url   = "http://www.weibo.com/u/5267312788"
  s.license= { :type => "MIT", :file => "LICENSE" }
  s.author       = { "NuoYuaniOS" => "appleco@nuoayuan.com.cn" }
  s.source       = { :git => "https://github.com/NuoyuaniOSTeam/NYWebViewContorller.git", :tag => s.version }
  s.source_files = "NYWebViewController/NYWebViewController/*.{h,m}"
  s.ios.deployment_target = '8.0'
  s.frameworks   = 'UIKit'
  s.requires_arc = true

end