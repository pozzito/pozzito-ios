#
#  Be sure to run `pod spec lint PozzitoUI.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "PozzitoUI"
  s.version      = "1.1.0"
  s.summary      = "Pozzito SDK UI elements"
  s.description  = "Pozzito default UI - user access, conversation creation and review, chat, user details"
  s.homepage     = "https://github.com/pozzito-dev/pozzito-ios"
  s.license      = "Private"
  s.author       = "Sedam IT"
  s.platform     = :ios, "9.0"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
s.source       = { :git => 'https://github.com/pozzito/pozzito-ios.git', :tag => '1.1.0' }
  s.vendored_frameworks = 'PozzitoUI.framework'
  s.dependency  "Pozzito"
end
