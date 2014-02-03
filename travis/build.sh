xcodebuild \
-target <app_target (optional, if you have only one)> \
-xcconfig ./Frank/frankify.xcconfig \
-arch armv7 \
-configuration Debug \
-sdk iphoneos \
DEPLOYMENT_LOCATION=YES \
DSTROOT="<full_path_to_your_xcode_project_directory>/Frank/frankified_build" \
FRANK_LIBRARY_SEARCH_PATHS="<full_path_to_your_xcode_project_directory>/Frank" \
clean build
