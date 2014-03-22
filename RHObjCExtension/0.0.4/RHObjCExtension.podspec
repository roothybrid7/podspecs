Pod::Spec.new do |s|
  s.name         = "RHObjCExtension"
  s.version      = "0.0.4"
  s.summary      = "A iOS Objective-C Extensions."
  s.homepage     = "https://github.com/roothybrid7/RHObjCExtension"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Satoshi Ohki" => "roothybrid7@gmail.com" }
  s.source       = { :git => "https://github.com/roothybrid7/RHObjCExtension.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Classes/Core'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'Classes/UIKit'
    ss.frameworks = 'UIKit'
    ss.dependency 'RHObjCExtension/Core'
  end

  s.subspec 'StoreKit' do |ss|
    ss.source_files = 'Classes/StoreKit'
    ss.frameworks = 'StoreKit'
    ss.dependency 'RHObjCExtension/Core'
  end

  s.requires_arc = true
end
