XCODE_SCHEME_IOS = KeyClip iOS
XCODE_SDK_IOS = iphonesimulator

XCODE_SCHEME_MAC = KeyClip Mac
XCODE_SDK_MAC = macosx

TEST_ARGS = -project KeyClip.xcodeproj -configuration Release build test
CLEAN_ARGS = -project KeyClip.xcodeproj -configuration Release clean

test:
	xcodebuild -scheme "$(XCODE_SCHEME_IOS)" -sdk "$(XCODE_SDK_IOS)" $(TEST_ARGS)
	xcodebuild -scheme "$(XCODE_SCHEME_MAC)" -sdk "$(XCODE_SDK_MAC)" $(TEST_ARGS)

clean:
	xcodebuild -scheme "$(XCODE_SCHEME_IOS)" -sdk "$(XCODE_SDK_IOS)" $(CLEAN_ARGS)
	xcodebuild -scheme "$(XCODE_SCHEME_MAC)" -sdk "$(XCODE_SDK_MAC)" $(CLEAN_ARGS)
