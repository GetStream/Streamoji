#
# Be sure to run `pod lib lint Streamoji.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Streamoji'
  s.version          = '0.1.8'
  s.summary          = 'Custom emoji rendering library for iOS apps with support for GIF & images.'

  s.swift_version = '5.2'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Custom emoji rendering library for iOS apps with support for GIF & images
- plug-in extension for UITextView
- performance, cache ✅
- with 💘 from @GetStream
                       DESC

  s.homepage         = 'https://github.com/GetStream/Streamoji'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cardoso' => 'matheus@getstream.io' }
  s.source           = { :git => 'https://github.com/GetStream/Streamoji.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/getstream_io'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Streamoji/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Streamoji' => ['Streamoji/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency "SwiftyGif", "~> 5.2"
  s.dependency "Nuke", "~> 8.4"
end
