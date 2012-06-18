Pod::Spec.new do |s|
  s.name         = "AMFoundation"
  s.version      = "0.1.0"
  s.summary      = "A couple little utilities with an important-sounding name."
  # s.description  = 'An optional longer description of AMFoundation.'
  s.homepage     = "https://github.com/amrox/AMFoundation"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Andy Mroczkowski" => "andy@mrox.net" }
  s.source       = { :git => "https://github.com/amrox/AMFoundation.git", :commit => 'a87117ff96' }
  s.platform     = :ios, '4.0'

  # ――― MULTI-PLATFORM VALUES ――――――――――――――――――――――――――――――――――――――――――――――――― #

  # If this Pod runs on both platforms, then specify the deployment
  # targets.
  #
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'

  s.source_files = 'AMFoundation'
  s.frameworks = 'Foundation', 'Quartz'

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

end
