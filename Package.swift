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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "26ee50198e98d5e0e3f94bfe5028517a69e27be42f557724b7c84811a1ab1f5e"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobiMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationInMobiAdapter.xcframework.zip",
            checksum: "fa6006ad1a9081357639ff9ba13b5dd787b7c1d68da994a4989801e208a427ff"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/InMobiSDK.xcframework.zip",
            checksum: "c6f614f8f8ed946dd0fce7c2b11aefb771427585f85d40e1db909889f8d36d70"
        ),
    ]
)
