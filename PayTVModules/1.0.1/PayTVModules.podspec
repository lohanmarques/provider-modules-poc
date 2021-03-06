Pod::Spec.new do |spec|
    spec.name          = "PayTVModules"
    spec.version       = "1.0.1"
    spec.summary       = "PayTVModules"
    spec.description   = <<-DESC
    PayTVModules
    DESC
  
    spec.homepage      = "https://github.com/lohanmarques/provider-modules-poc"
    spec.source        = { :git => "https://github.com/lohanmarques/provider-modules-poc.git", :tag => spec.version.to_s }
    spec.license       = { :type => "MIT", :file => "LICENSE" }
    spec.author        = { "Globo Comunicação e Participações S.A" => "https://www.globo.com/" }
          
    spec.platform      = :ios, "11.0"
    spec.swift_version = '5.0'

    spec.subspec 'VideoQuality' do |sp|
        sp.source_files  = "VideoQuality/**/*.{h,m,swift}"
        sp.exclude_files = "VideoQuality/VideoQualityTests/**/*"
    end
  end
  