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
                url: "https://s3.us-east-1.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/OpenTok-iOS-2.34.0.zip",
                checksum: "ea7055dc47df33aaa53e23535a989a55454cf9bbddebc0baf1b4c25816f61f1f"),
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