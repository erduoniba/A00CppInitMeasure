#
# Be sure to run `pod lib lint A00CppInitMeasure.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'A00CppInitMeasure'
  s.version          = '1.0.3'
  s.summary          = '收集App启动，main之前的 C++ static initializers 的方法耗时工具。需要设置为静态库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        0.1.1: 不统计低于指定时间的函数耗时
                        1.0.1: 添加自动打包xcframework脚本，默认支持以动态库被App依赖
                        1.0.2: 支持单仓下，源码和二进制切换
                        1.0.3: 添加自动打包二进制及发布脚本
                       DESC

  s.homepage         = 'https://github.com/erduoniba/A00CppInitMeasure'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'denglibing' => 'denglibing@gmail.com' }
  s.source           = { :git => 'https://github.com/erduoniba/A00CppInitMeasure.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  
  # 设置为静态库
  s.static_framework = true
  s.ios.library = 'c++'
  
  # Framework模式
  s.subspec 'Framework' do |framework|
    # https://github.com/CocoaPods/CocoaPods/issues/7942
    framework.vendored_frameworks = "A00CppInitMeasure/Frameworks/A00CppInitMeasure_#{s.version.to_s}/A00CppInitMeasure.xcframework"
  end
  
  # Source模式
  s.subspec 'Source' do |source|
    source.source_files = 'A00CppInitMeasure/Classes/**/*'
  end
  
  # 只支持Podfile直接依赖该 .podspecs 文件，其他方式提交后会变成podspec.json，不再支持if判断
  if ENV['IS_SOURCE']
      s.default_subspec = 'Source'
  else
      # 默认是framework模式
      s.default_subspec = 'Framework'
  end
    
  # s.resource_bundles = {
  #   'A00CppInitMeasure' => ['A00CppInitMeasure/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
