Pod::Spec.new do |spec|

  spec.name         = "ISPORTSDK"
  spec.version      = ENV['LIB_VERSION'] || "0.0.1"

  spec.summary      = "ISport Sdk iOS"

  spec.description  = <<-DESC
                        ISport SDK iOS
                   DESC

  spec.homepage     = "https://isport.com"
  spec.license      = { :type => 'Copyright', :text => 'Copyright (C) 2020 by ISporty, Inc' }
  spec.author       = { "ISporty" => "support@isport.com" }

  spec.platform = :ios
  spec.ios.deployment_target = "9.0"
  spec.swift_version = ["4.0", "4.2", "5.0"]

  spec.source = { :git => "https://github.com/ISporty/isport-sdk-ios-release.git", :tag => "v#{spec.version.to_s}" }

  spec.source_files = "ISPORTSDK.framework/Headers/*.h"
  spec.public_header_files = "ISPORTSDK.framework/Headers/*.h"
  spec.vendored_frameworks = "ISPORTSDK.framework"

  spec.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.frameworks = 'AVFoundation', 'UIKit', 'WebKit'
end
