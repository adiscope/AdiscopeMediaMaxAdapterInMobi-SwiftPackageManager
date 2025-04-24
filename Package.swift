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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "8ee4e04fe8c87cd62170fc6637a0ddbb765134997ef97943aaaa87cb518c6102"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/InMobiSDK.xcframework.zip",
            checksum: "b78599d6bd63efe0e54e60ce3ff4437ecb083f9a30e8e072966ae7ff16308508"
        ),
    ]
)
