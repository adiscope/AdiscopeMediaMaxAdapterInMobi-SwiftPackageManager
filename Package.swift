// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterInMobi",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterInMobi",
            targets: ["AdiscopeMediaMaxAdapterInMobiTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterInMobiTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterInMobi"),
                .target(name: "InMobiSDK"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "a3ac138b1259b65b4d5c3d928cc169a0eb29d44579815c3fd393bfc6b2a959bf"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/InMobiSDK.xcframework.zip",
            checksum: "1ae7fddf044a611db538c279982659c663ca7d1fb4706e3e076d007778fb8b2d"
        ),
    ]
)
