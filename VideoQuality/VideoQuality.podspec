Pod::Spec.new do |spec|
  spec.name          = "VideoQuality"
  spec.version       = "1.0.1"
  spec.summary       = "Qualidade do vídeo"
  spec.description   = <<-DESC
  Caso de uso para mudança da qualidade do vídeo
  DESC

  spec.homepage      = "https://github.com/lohanmarques/provider-modules-poc"
  spec.source        = { :git => "https://github.com/lohanmarques/provider-modules-poc.git", :tag => "#{spec.version}" }
  spec.license       = { :type => "MIT", :file => "LICENSE" }
  spec.author        = { "Globo Comunicação e Participações S.A" => "https://www.globo.com/" }
        
  spec.platform      = :ios, "11.0"
  spec.swift_version = '5.0'
  spec.source_files  = "VideoQuality/**/*.{h,m,swift}"
  spec.exclude_files = "VideoQuality/VideoQualityTests/**/*"

end
