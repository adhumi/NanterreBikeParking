// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NanterreBikeParking",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        .package(url: "https://github.com/swiftcsv/SwiftCSV.git", from: "0.8.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0")
    ],
    targets: [
        .executableTarget(
            name: "NanterreBikeParking",
            dependencies: [
                "SwiftCSV",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]),
        .testTarget(
            name: "NanterreBikeParkingTests",
            dependencies: ["NanterreBikeParking"]),
    ]
)
