Pod::Spec.new do |s|
  s.name     = 'AMFoundation'
  s.version  = '0.1.0'
  s.summary  = 'A short description of AMFoundation.'
  s.homepage = 'https://github.com/amrox/AMFoundation'
  s.author   = { 'Andy Mroczkowski' => 'andy@mrox.net' }
  s.source   = { :git => 'http://example.com/AMFoundation.git', :tag => '0.1.0' }

  s.description = 'A couple little utilities with an important-sounding name.'
  # A list of file patterns. If the pattern is a directory then the path will
  # automatically have '*.{h,m,mm,c,cpp}' appended.
  s.source_files = 'Classes', 'Classes/**/*.{h,m}'

  #s.xcconfig = { 'OTHER_LDFLAGS' => '-framework SomeRequiredFramework' }

  #s.dependency 'SomeLibraryThatAMFoundationDependsOn', '>= 1.0.0'
end
