Pod::Spec.new do |s|
  s.name             = 'FirebaseMessaging'
  s.version          = '4.1.9'
  s.summary          = 'Firebase Messaging for iOS'

  s.description      = <<-DESC
Firebase Messaging for iOS is a service that allows you to send data from your server to your users'
iOS device, and also to receive messages from devices on the same connection. The service handles
all aspects of queueing of messages and delivery to the target iOS application running on the target
device, and it is completely free.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.social_media_url = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '10.0'

  s.cocoapods_version = '>= 1.4.0'
  s.static_framework = true
  s.prefix_header_file = false

  base_dir = "Firebase/Messaging/"
  s.source_files = base_dir + '**/*.[mh]'
  s.requires_arc = base_dir + '*.m'
  s.public_header_files = base_dir + 'Public/*.h'
  s.library = 'sqlite3'
  s.pod_target_xcconfig = {
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      'GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1 ' +
      'FIRMessaging_LIB_VERSION=' + String(s.version),
    # Unit tests do library imports using repo-root relative paths.
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"',
 }
  s.framework = 'SystemConfiguration'
  s.weak_framework = 'UserNotifications'
  s.dependency 'FirebaseAnalyticsInterop', '~> 1.3'
  s.dependency 'FirebaseInstanceID', '~> 4.1'
  s.dependency 'GoogleUtilities/AppDelegateSwizzler', '~> 6.2'
  s.dependency 'GoogleUtilities/Reachability', '~> 6.2'
  s.dependency 'GoogleUtilities/Environment', '~> 6.2'
  s.dependency 'GoogleUtilities/UserDefaults', '~> 6.2'
  s.dependency 'Protobuf', '~> 3.9', '>= 3.9.2'

end
