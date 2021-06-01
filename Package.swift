// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PersonalityKit",
    platforms: [
        .macOS(.v11), .iOS(.v14), .tvOS(.v14), .watchOS(.v7)
    ],
    products: [
        .library(
            name: "PersonalityKit",
            targets: ["PersonalityKit"]),
    ],
    dependencies: [
        .package(name: "Dunesailer Utilities",
                 url: "https://github.com/dunesailer/Utilities.git",
                 from: "2.0.6"),
    ],
    targets: [
        .target(
            name: "PersonalityKit",
            dependencies: [.product(name: "DunesailerUtilities",
                                    package: "Dunesailer Utilities")]),
        .testTarget(
            name: "PersonalityKitTests",
            dependencies: ["PersonalityKit"]),
    ]

)
