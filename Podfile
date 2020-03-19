platform :ios, '11.0'

target 'MarvelIVVezeeta' do
  use_frameworks!
  pod 'CoreNetwork', :git => "https://github.com/AnasAlhasani/CoreNetwork"
  pod 'Kingfisher', '~> 5.0'
  pod 'SwiftLint'
  pod 'SwiftGen'
  pod 'CryptoSwift'
  pod 'RealmSwift'
end

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end
end
