source 'https://github.com/Vandcarlos/VandMarvelSpecs.git'
source 'https://cdn.cocoapods.org/'

# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

def internal_pods

  pod 'VandMarvelUIKit'
  pod 'VandMarvelAPI'
  pod 'VandMarvelCharacters'

end

target 'VandMarvel' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for VandMarvel

  internal_pods

  pod 'SwiftLint'
  pod 'SnapKit', '~> 5.0.0'

  target 'VandMarvelTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'VandMarvelUITests' do
    # Pods for testing
  end

end
