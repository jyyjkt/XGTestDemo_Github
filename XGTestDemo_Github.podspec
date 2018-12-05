

Pod::Spec.new do |s|
  s.name             = 'XGTestDemo_Github'
  s.version          = '0.1.2'
  s.summary          = '测试Framework'

  s.description      = <<-DESC
TODO: 详细描述
                       DESC

  s.homepage         = 'https://github.com/jyyjkt/XGTestDemo_Github'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jyyjkt' => 'jyyjkt@qq.com' }
  s.source           = { :git => 'https://github.com/jyyjkt/XGTestDemo_Github.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  # 测试模块
  s.subspec 'Test' do |sp|
      sp.vendored_frameworks = 'XGTestDemo_Github/Classes/XGTestDemo.framework'
      sp.dependency 'Alamofire', '~> 4.7'
      #sp.resources = 'SDK/ShareSDK/Support/Required/ShareSDK.bundle'
      
      sp.subspec 'TestNext' do |ssp|
          #ssp.vendored_frameworks = 'XGTestDemo_Github/Classes/XGTestDemo.framework'
          ssp.dependency 'Kingfisher','~>4.10'
      end
      
  end


  #s.source_files = 'XGTestDemo_Github/Classes/**/*'
  # s.resource_bundles = {
  #   'XGTestDemo_Github' => ['XGTestDemo_Github/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
end
