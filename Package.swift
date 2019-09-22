// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PersonalityKit",
    platforms: [
        .macOS(.v10_14), .iOS(.v12),
    ],
    products: [
        .library(
            name: "PersonalityKit",
            targets: ["PersonalityKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/dunesailer/Utilities.git", from: "0.4.1"),
    ],
    targets: [
        .target(
            name: "PersonalityKit",
            dependencies: ["DunesailerUtilities"]),
        .testTarget(
            name: "PersonalityKitTests",
            dependencies: ["PersonalityKit"]),
    ]

)
