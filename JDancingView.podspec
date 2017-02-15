Pod::Spec.new do |s|
  s.name             = 'JDancingView'
  s.version          = '0.1.0'
  s.summary          = 'By far the most dancing and colourful view I have seen in my entire life.You will love it.'
 
  s.description      = <<-DESC
This dancing view changes itself with different amazing colours and keep rotating itself makes your app look awesome!
                       DESC
 
  s.homepage         = 'https://github.com/Sazalak89/JDancingView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zalak Patel' => 'jalakpatel89@gmail.com' }
  s.source           = { :git => 'https://github.com/Sazalak89/JDancingView.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'DancingView/DancingView.swift'
 
end