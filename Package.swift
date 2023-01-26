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
        .package(url: "https://github.com/btfranklin/ControlledChaos",
                 .upToNextMajor(from: "1.3.2")),
    ],
    targets: [
        .target(
            name: "PersonalityKit",
            dependencies: [
                .product(name: "ControlledChaos",
                         package: "ControlledChaos"),
            ]),
        .testTarget(
            name: "PersonalityKitTests",
            dependencies: ["PersonalityKit"]),
    ]

)
