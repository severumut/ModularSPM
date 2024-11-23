// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModularSPM",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "API", targets: ["API"]),
        .library(name: "Components", targets: ["Components"]),
        .library(name: "Integrations", targets: ["Integrations"]),
        .library(name: "AdMobManager", targets: ["AdMobManager"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.12.0")
    ],
    targets: [
         .target(
             name: "API",
             dependencies: []
         ),
         .target(
             name: "Components",
             dependencies: []
         ),
         .target(
             name: "Integrations",
             dependencies: []
         ),
         .target(
             name: "AdMobManager",
             dependencies: [
                 .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
             ],
             path: "Sources/AdMobManager"
         ),
     ]
)
