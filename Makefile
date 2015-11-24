ARCH_FLAGS=-arch armv7 -marm -march=armv7-a

keychaineditor: main.m
	clang \
		-Os -Wall -bind_at_load -fobjc-arc \
		$(ARCH_FLAGS) \
		-mios-version-min=7.0 \
		-isysroot `xcrun --sdk iphoneos7.1 --show-sdk-path` \
		-framework Foundation -framework Security \
		-o keychaineditor main.m

#clean:
#	rm -f keychaineditor
