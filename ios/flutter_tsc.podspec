#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_tsc.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_tsc'
  s.version          = '0.0.1'
  s.summary          = 'Flutter TSC Printer plugin'
  s.description      = <<-DESC
  Flutter TSC Printer plugin.
                       DESC
  s.homepage         = 'http://mirfut.net'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'progs@mirfut.net' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
