
Pod::Spec.new do |s|


  s.name         = "Foo"
  s.version      = "0.0.1"
  s.summary      = "Foo is an Objective-C library for iOS developers"


  s.homepage     = "https://github.com/londonxue/foo"

  s.license      = "MIT(LICENSE)"


  s.author             = { "london" => "londonxue@163.com" }


   s.platform     = :ios, "7.0"

   s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/londonxue/foo.git",:tag=>"0.0.1" }

  s.source_files  = "model", "model/**/*.{h,m}"
  s.exclude_files = "model/Exclude"

   s.public_header_files = "model/**/*.h"


   s.library   = "sqlite3"

   s.requires_arc = true

   s.dependency "MJExtension"

end
