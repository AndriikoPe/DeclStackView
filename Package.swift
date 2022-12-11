// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeclStackView",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DeclStackView",
            targets: ["DeclStackView"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DeclStackView",
            dependencies: []),
        .testTarget(
            name: "DeclStackViewTests",
            dependencies: ["DeclStackView"]),
    ]
)
