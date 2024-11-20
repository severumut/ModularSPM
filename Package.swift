// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModularSPM",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "API", targets: ["API"]),
        .library(name: "Components", targets: ["Components"]),
        .library(name: "Integrations", targets: ["Integrations"]),
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
     ]
)
