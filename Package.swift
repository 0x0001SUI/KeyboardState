// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KeyboardState",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "KeyboardState",
            targets: ["KeyboardState"]),
    ],
    targets: [
        .target(
            name: "KeyboardState",
            dependencies: []),
    ]
)
