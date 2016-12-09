

Pod::Spec.new do |s|

  s.name         = "LLTFactoryUI"
  s.version      = "0.0.1"
  s.summary      = "A great tool for creating UI of iOS"

  s.description  = <<-DESC
                   这是一个简单的工具类，为了以最快的速度代码创建iOS的UI
                   DESC

  s.homepage     = "https://github.com/lileitao/SetUpUIdemo"


  s.license      = "MIT"
  s.author             = { "李磊涛" => "llt1886797@163.com" }
  s.source       = { :git => "https://github.com/lileitao/SetUpUIdemo.git", :tag => "#{s.version}" }

  s.source_files  = "LLTFactoryUI", "*.{h,m}"
  s.platform     = :ios, "8.0"
  s.dependency 'Masonry', '~> 1.0.2'
  s.requires_arc = true


end
