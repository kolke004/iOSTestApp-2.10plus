# Adds Firebase pod for Google Analytics
pod 'Firebase/Analytics'
# Add pods for any other desired Firebase products
# https://firebase.google.com/docs/ios/setup#available-pods

# Firebase Pods for auth sign-in
pod 'Firebase/Core'
pod 'Firebase/Auth'
pod 'FirebaseUI'
pod 'FirebaseUI/Email'

# Pendo Pod for Pendo SDK initialization
platform:ios, '9.0'
use_frameworks!

# Pendo Pod for init()

pod 'Pendo', '~> 2.12.0'

target 'iOSTestApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for iOSTestApp

  target 'iOSTestAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'iOSTestAppUITests' do
    # Pods for testing
  end

end
