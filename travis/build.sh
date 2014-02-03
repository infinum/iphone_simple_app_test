xcodebuild \
-target <app_target (optional, if you have only one)> \
-xcconfig ./Frank/frankify.xcconfig \
-arch armv7 \
-configuration Debug \
-sdk iphoneos \
DEPLOYMENT_LOCATION=YES \
DSTROOT="Frank/frankified_build" \
FRANK_LIBRARY_SEARCH_PATHS="Frank" \
clean build
