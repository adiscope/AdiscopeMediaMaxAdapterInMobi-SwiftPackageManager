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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterInMobiTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterInMobi"),
                .target(name: "AdiscopeMediaMaxAdapterInMobiMediationAdapter"),
                .target(name: "InMobiSDK"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "376d639b0381d07746ed9a99bf90dc5a517cabcfd1f7932ac8ffec57bc05e0be"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobiMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationInMobiAdapter.xcframework.zip",
            checksum: "0117c6c4af921e0a612c1c8ea68bec8e3ad90b99d2986b80df3d9c2e12662fe0"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/InMobiSDK.xcframework.zip",
            checksum: "4a7ff71b8128766db4f0b03c3a70f8abb5f3cc9023824ed114518538f9d2f45f"
        ),
    ]
)
