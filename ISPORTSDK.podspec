Pod::Spec.new do |spec|

  spec.name         = "ISPORTSDK"
  spec.version      = "1.3.8"

  spec.summary      = "ISport Sdk iOS"

  spec.description  = <<-DESC
                        ISport SDK iOS
                   DESC

  spec.homepage     = "https://isport.com"
  spec.license      = { :type => 'Copyright', :text => 'Copyright (C) 2020 by ISporty, Inc' }
  spec.author       = { "ISporty" => "support@isport.com" }
  spec.platform = :ios
  spec.ios.deployment_target = "9.0"
  spec.source = { :git => "https://github.com/ISporty/isport-sdk-ios-release.git", :tag => "v#{spec.version.to_s}" }
  spec.source_files = "ISPORTSDK.framework/Headers/*.h"
  spec.public_header_files = "ISPORTSDK.framework/Headers/*.h"
  spec.vendored_frameworks = "ISPORTSDK.framework"
  spec.frameworks = 'AVFoundation', 'UIKit', 'WebKit'
end
