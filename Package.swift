// swift-tools-version:5.8


import PackageDescription

let package = Package(
    name: "waterads",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "waterads",
            targets: ["waterads"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "10.7.0"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-SDK-iOS.git", from: "11.1.1")
    ],
    targets: [
        .target(
            name: "waterads",
            path: "Sources",
            resources: [
                .process("Images/Media.xcassets")
            ]
        ),
        .testTarget(
            name: "wateradsTests",
            dependencies: ["waterads"]),
    ]
)
