#
# Be sure to run `pod lib lint A00CppInitMeasure.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'A00CppInitMeasure'
  s.version          = '0.1.0'
  s.summary          = '收集App启动，main之前的 C++ static initializers 的方法耗时工具。需要设置为静态库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/erduoniba/A00CppInitMeasure'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'denglibing' => 'denglibing@gmail.com' }
  s.source           = { :git => 'https://github.com/erduoniba/A00CppInitMeasure.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  # 设置为静态库
  s.static_framework = true

  s.source_files = 'A00CppInitMeasure/Classes/**/*'
  
  s.ios.library = 'c++'
  
  # s.resource_bundles = {
  #   'A00CppInitMeasure' => ['A00CppInitMeasure/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
