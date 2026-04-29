// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "OpenTokClientSDKVideo",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OpenTokClientSDKVideo",
            targets: ["OpenTok", "OpenTokClientSDKVideo"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "OpenTok",
                url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/OpenTok-iOS-2.33.0.zip",
                checksum: "cb5b3087730a2b9b87fb537d1fe3dcca0992f3779fa6241d7ec64991fc261f2f"),
        .target(name: "OpenTokClientSDKVideo",
                path: "Sources",
                resources: [
                    .process("OpenTokClientSDKVideo/Resources/selfie_segmentation.tflite"),
                    .copy("OpenTokClientSDKVideo/Resources/PrivacyInfo.xcprivacy")
                ],
                linkerSettings: [
                    .linkedFramework("Network"),
                    .linkedFramework("VideoToolbox"),
                    .linkedFramework("Accelerate"),
                    .linkedLibrary("c++")
                ]),
        .testTarget(name: "OpenTokClientSDKVideoTests",
                    dependencies: ["OpenTokClientSDKVideo"])
    ]
)