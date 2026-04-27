# OpenTokClientSDKVideo

The OpenTok Client SDK Video iOS lets you use Opentok-powered video sessions in apps
you build for iPad, iPhone, and iPod touch devices.

All Opentok applications are composed of two parts:

* The client-side, which uses the [Opentok client
  SDKs](https://developer.vonage.com/en/video/client-sdks/ios/overview) and runs in a user's
  browser or mobile app
* The server-side, which uses the [Opentok server
  SDKs](https://developer.vonage.com/en/video/server-sdks/overview) and runs on your server
  to pass authentication information to the client.

The client SDK for building iOS apps is the Opentok Client SDK Video iOS, which provides
most of the core functionality for your app, including:

* Connecting to an Opentok session
* Publishing streams to a session
* Subscribing to streams in a session

Client SDKs are also available for
[Android](https://developer.vonage.com/en/video/client-sdks/android/overview) and
[web](https://developer.vonage.com/en/video/client-sdks/web/overview). All Opentok client SDKs can interact with one another.

You can learn more about the basics of Opentok clients, servers, sessions, and
more on the [Opentok Overview](https://developer.vonage.com/en/video/overview) page.

Swift Package Manager
---------------------
You can add the Opentok Client SDK Video iOS by adding the https://github.com/vonage/vonage-video-client-sdk-swift.git repository as a Swift Package Dependency.

To add a package dependency to your Xcode project, select *File* > *Swift Packages* > *Add Package Dependency* and enter its repository URL.

Learning to build with the Opentok Client SDK Video iOS
------------------------------------------------------

The best way to learn how to use the Opentok Client SDK Video iOS is to follow the 
[Basic Video Chat tutorial](https://developer.vonage.com/en/tutorials/basic-video-chat/introduction/swift).

Once you understand the basics of building with the Opentok Client SDK Video iOS, you
can get more detailed information and learn how to customize your application
with the Opentok [developer guides](https://developer.vonage.com/en/video/guides).
To investigate specific API classes and methods, see the [Opentok Client SDK Video API
reference](https://vonage.github.io/video-docs/video-ios-reference/latest/).

Code samples
------------

For samples using Swift, visit our [Swift sample app
repo](https://github.com/Opentok/vonage-video-ios-sdk-samples)
on GitHub.

Interoperability
----------------

Apps written with the Opentok Client SDK Video iOS 2.29.0 can interoperate with Opentok apps
written with version 2.27+ of the Opentok client SDKs:

* Opentok.js
* Opentok Android SDK
* Opentok iOS SDK
* Opentok macOS SDK
* Opentok Windows SDK
* Opentok Linux SDK

Using the SDK
-------------

The OpenTok.xcframework directory contains the Opentok Client SDK Video iOS.

The Opentok Client SDK Video iOS is available as [Swift Package Manager](https://github.com/opentok/opentok-ios-sdk.git), 
or the Pod "OpentokXCFramework" for use with [CocoaPods](http://cocoapods.org/).

The Opentok Client SDK Video iOS requires the following frameworks and libraries:

* AudioToolbox.framework
* AVFoundation.framework
* CoreGraphics.framework
* CoreMedia.framework
* CoreTelephony.framework
* CoreVideo.framework
* Foundation.framework
* GLKit.framework
* libc++.dylib (libc++.tbd in Xcode 7+)
* libsqlite3.dylib (libsqlite3++.tbd in Xcode 7+)
* Metal.framework
* MetalKit.framework
* MetalPerformanceShaders.framework
* OpenGLES.framework
* QuartzCore.framework
* SystemConfiguration.framework
* UIKit.framework
* VideoToolbox.framework

The Opentok Client SDK Video iOS links to the libc++ standard library. If another library
that links to the libc++ standard library was compiled in a version of Xcode
older than 6.0.0, it may result in segfaults at run time when using it with the
Opentok Client SDK Video iOS. Known incompatible libraries include, but are not limited to,
Firebase (versions earlier than 2.1.2 -- see
https://code.google.com/p/webrtc/issues/detail?id=3992) and Google Maps
(versions earlier than 1.9.0). To fix this issue, download a version of the
other library that was compiled using XCode 6.0.0 or later.

To access the camera and microphone, set `NSCameraUsageDescription` and `NSMicrophoneUsageDescription` under Info.plist Values in Xcode’s Build Settings. These are required by iOS to display permission prompts. For more
information see [the Apple documentation on Info.plist](https://developer.apple.com/documentation/bundleresources/information-property-list).

See the [release notes](release-notes.md) for information on the latest version
of the SDK and for a list of known issues.

See [this document](https://developer.vonage.com/en/video/client-sdks/ios/background-state)
for information on using the SDK in apps running in the background mode.

System requirements
-------------------

The Opentok Client SDK Video iOS is supported on the following devices:

* iPhone -- iPhone 5s and later

* iPad -- iPad Pro 1st generation and later, iPad (2017), iPad Air (all models),
  iPad 4th generation, iPad mini 2 and later

* iPod touch 6th generation and later

The Opentok Client SDK Video iOS is supported in iOS 15 or higher.

The Opentok Client SDK Video iOS is supported on Wi-Fi, 4G/LTE, and 5G connections.

The Opentok Client SDK Video iOS supports one published audio-video stream, one
subscribed audio-video stream, and up to three additional subscribed
audio-only streams simultaneously on the iPhone 5s (the lowest-end
device supported). On the iPhone 7, tests have shown support for
subscribing to as many as 20 simultaneous low-resolution (200x200-pixel,
15-frame-per-second) streams. To connect more than two clients in a
session using the Opentok Client SDK Video iOS, create a session that uses the Opentok
Media Router (a session with the media mode set to routed). See
[The Opentok Media Router and media
modes](https://developer.vonage.com/en/video/guides/create-session#media-mode).

Documentation
-------------

Reference documentation is included at
<https://vonage.github.io/video-docs/video-ios-reference/latest/>.

More information
-----------------

For a list of new features and known issues, see the [release notes](release-notes.md).
