
Pod::Spec.new do |spec|
  spec.name          = "Version"
  spec.version       = "1.0.4"
  spec.summary       = "Version"
  spec.description   = <<-DESC
  Version
  DESC

  spec.homepage      = "https://github.com/lohanmarques/provider-modules-poc"
  spec.source        = { :git => "https://github.com/lohanmarques/provider-modules-poc.git", :tag => spec.version.to_s }
  spec.license       = { :type => "MIT", :file => "LICENSE" }
  spec.author        = { "Globo Comunicação e Participações S.A" => "https://www.globo.com/" }
        
  spec.platform      = :ios, "11.0"
  spec.swift_version = '5.0'
  
  sp.source_files  = "Version/**/*.{h,m,swift}"
  sp.exclude_files = "Version/VersionTests/**/*"

end
