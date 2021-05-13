#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_gl.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name = "flutter_gl"
  s.version = "0.0.3"
  s.summary = "A new flutter plugin project."
  s.description = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage = "http://example.com"
  s.license = { :file => "../LICENSE" }
  s.author = { "Your Company" => "email@example.com" }
  s.source = { :path => "." }
  s.source_files = "Classes/**/*"
  s.public_header_files = "Classes/**/*.h"

  
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.13'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
  
  # s.dependency "three3d_egl"

  # s.vendored_frameworks = "Frameworks/three3d_egl.framework"
  # s.preserve_path = "Frameworks/*"



end
