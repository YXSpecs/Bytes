Pod::Spec.new do |s|
  s.name             = 'Bytes'
  s.version          = '1.0.0'
  s.summary          = 'Read & Write Bytes for iOS & macOS'
  s.description      = 'Read & Write Bytes for iOS & macOS tools'
  s.homepage         = 'https://github.com/YXSpecs/Bytes'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tangbl93' => 'tangbl93@gmail.com' }
  s.source           = { :git => 'https://github.com/YXSpecs/Bytes.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.source_files = 'Bytes/**/*'
  
end

