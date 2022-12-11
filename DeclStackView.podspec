#
#  Be sure to run `pod spec lint StackView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "DeclStackView"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of StackView."

  spec.description  = <<-DESC
	This is a declarative version of stack view.
                   DESC

  spec.homepage     = "https://github.com/MrPelmen/StackView"

  spec.license      = "MIT"
  spec.author             = { "Andriiko" => "andrii.permiakov@ukma.edu.ua" }
  spec.platform     = :ios, "13.0"


  spec.source       = { :git => "https://github.com/MrPelmen/StackView.git", :tag => "#{spec.version}" }

  spec.source_files  = "DeclStackView/**/*.{h,m,swift}"

end
