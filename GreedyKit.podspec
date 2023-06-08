Pod::Spec.new do |s|
  s.name = 'NoiceGreedyKit'
  s.version = ENV['LIB_VERSION'] || '0.1.0'
  s.summary = 'Components written in Swift for preventing sensitive media data to be captured'
  s.description = 'GreedyKit is a set of ready-to-use components written in Swift for preventing sensitive media data to be exposed by screen capture tools in iOS.'

  s.homepage = 'https://github.com/noice-id/IOS12GreedyKit'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'igooor-bb' => 'igooor.ww@gmail.com' }
  s.author = { 'arsalimam' => 'arsal.imam@noice.id' }
  s.source = { :git => 'https://github.com/noice-id/IOS12GreedyKit', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = "5.1"
  s.source_files = 'Sources/**/*'
end
