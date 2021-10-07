platform :ios, '13.6'
use_frameworks!
inhibit_all_warnings!

target 'NubankSimulator' do

  # Pods for NubankSimulator
  pod 'IQKeyboardManagerSwift', '6.5.6'
  pod 'KeyValueStorage', '~> 2.0'
  pod "Resolver", '1.4'
  
  target 'NubankSimulatorTests' do
    inherit! :search_paths
    
    # Pods for testing
  end

  target 'NubankSimulatorUITests' do
    # Pods for testing
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
    end
  end
end
