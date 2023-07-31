// swift-tools-version:5.8


import PackageDescription

let package = Package(
    name: "watertads",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "watertads",
            targets: ["watertads"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "10.7.0"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-SDK-iOS.git", from: "11.1.1")
    ],
    targets: [
        .target(
            name: "watertads",
            path: "Sources",
            resources: [
                .process("Images/Media.xcassets")
            ]
        ),
        .testTarget(
            name: "watertadsTests",
            dependencies: ["watertads"]),
    ]
)
