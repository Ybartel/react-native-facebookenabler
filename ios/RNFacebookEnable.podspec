
Pod::Spec.new do |s|
  s.name         = "RNFacebookEnable"
  s.version      = "1.0.0"
  s.summary      = "RNFacebookEnable"
  s.description  = <<-DESC
                  RNFacebookEnable
                   DESC
  s.homepage     = "https://github.com/Ybartel/react-native-facebookenabler"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNFacebookEnable.git", :tag => "master" }
  s.source_files  = "RNFacebookEnable/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  