Pod::Spec.new do |s|
  s.name             = 'GoogleDataTransport'
  s.version          = '3.1.0'
  s.summary          = 'Google iOS SDK data transport.'

  s.description      = <<-DESC
Shared library for iOS SDK data transport needs.
                       DESC

  s.homepage         = 'https://developers.google.com/'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '10.0'

  # To develop or run the tests, >= 1.8.0.beta.1 must be installed.
  s.cocoapods_version = '>= 1.4.0'

  s.static_framework = true
  s.prefix_header_file = false

  s.source_files = 'GoogleDataTransport/GDTCORLibrary/**/*'
  s.public_header_files = 'GoogleDataTransport/GDTCORLibrary/Public/*.h'
  s.private_header_files = 'GoogleDataTransport/GDTCORLibrary/Private/*.h'

  header_search_paths = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/GoogleDataTransport/"'
  }

  s.pod_target_xcconfig = {
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'GCC_TREAT_WARNINGS_AS_ERRORS' => 'YES',
    'CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY' => 'YES'
  }.merge(header_search_paths)

end
