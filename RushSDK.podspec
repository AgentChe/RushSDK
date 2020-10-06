Pod::Spec.new do |spec|
  spec.name         = "RushSDK"
  spec.version      = "1.0"
  spec.summary      = "SDK for analytics in Rush apps"
  spec.description  = "SDK for analytics in Rush apps"
  spec.homepage     = "https://github.com/AgentChe/RushSDK"
  spec.license      = "MIT"
  spec.author             = { "Andrey Chernyshev" => "akonst17@gmail.com" }
  spec.platform     = :ios, "10.0"
  # spec.swift_version = "5.0"
  spec.source       = { :git => "https://github.com/AgentChe/RushSDK.git", :tag => "#{spec.version}" }
  spec.source_files  = "RushSDK", "RushSDK/**/*.{h,m,swift}"
  spec.public_header_files = "RushSDK/**/*.h"
end
