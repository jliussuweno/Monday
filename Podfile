platform :ios, '13.0'

workspace 'Monday.xcworkspace'
project 'Monday.xcodeproj'

def register_pod
  pod 'Register', :path =>'DevPods/Register'
end

def login_pod
  pod 'Login', :path =>'DevPods/Login'
  register_pod
end

def development_pods
    login_pod
    register_pod
end


target 'Monday' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Monday
  development_pods

end
