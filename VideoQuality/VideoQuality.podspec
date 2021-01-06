Pod::Spec.new do |spec|
    spec.name             = "VideoQuality"
    spec.version          = "1.0.5"
    spec.summary          = "VideoQuality"
    spec.description      = "VideoQuality Description"

    spec.homepage         = "https://github.com/lohanmarques/provider-modules-poc"
    spec.source           = { :git => "https://github.com/lohanmarques/provider-modules-poc.git", :tag => spec.version.to_s }
    spec.license          = { :type => "MIT", :file => "LICENSE" }
    spec.author           = { "Globo Comunicação e Participações spec.A" => "https://www.globo.com/" }

    spec.platform         = :ios, "11.0"
    spec.swift_version    = "5.0"

    spec.module_name      = spec.name
    spec.source_files     = "**/*.{h,m,swift}"
    spec.exclude_files    = "VideoQualityTests/**/*"
  end
