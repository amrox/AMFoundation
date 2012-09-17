Pod::Spec.new do |s|
  s.name                  = "AMFoundation"
  s.version               = "0.1.3"
  s.summary               = "A couple little utilities with an important-sounding name."
  s.homepage              = "https://github.com/amrox/AMFoundation"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { "Andy Mroczkowski" => "andy@mrox.net" }
  s.source                = { :git => "https://github.com/amrox/AMFoundation.git", :tag => '0.1.3' }
  s.ios.deployment_target = '4.3'
  s.osx.deployment_target = '10.6'
  s.source_files          = 'AMFoundation'
  s.frameworks            = 'Foundation', 'CoreGraphics'
end
