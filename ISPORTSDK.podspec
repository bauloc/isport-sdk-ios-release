Pod::Spec.new do |spec|

  spec.name         = "ISPORTSDK"
  spec.version      = "0.0.6"

  spec.summary      = "ISport Sdk iOS"

  spec.description  = <<-DESC
                        ISport SDK iOS
                   DESC

  spec.homepage     = "https://isport.com"
  spec.license      = { :type => 'Copyright', :text => 'FPT' }
  spec.author       = { "Fuck iSport" => "support@isport.com" }

  spec.platform = :ios
  spec.ios.deployment_target = "9.0"
  spec.source = { :git => "https://github.com/bauloc/isport-sdk-ios-release.git", :tag => "v#{spec.version.to_s}" }
  spec.source_files = "ISPORTSDK.framework/Headers/*.h"
  spec.public_header_files = "ISPORTSDK.framework/Headers/*.h"
  spec.vendored_frameworks = "ISPORTSDK.framework"
  spec.frameworks = 'AVFoundation', 'UIKit', 'WebKit'
end
