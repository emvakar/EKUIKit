// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EKUIKit",
    platforms: [.iOS(.v13), .tvOS(.v13), .watchOS(.v7)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "EKUIKit",
            targets: ["EKUIKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/emvakar/swift-log-telegram.git", from: "0.0.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "EKUIKit",
            dependencies: [
                "SnapKit",
                .product(name: "LoggingTelegram", package: "swift-log-telegram"),
            ]),
        .testTarget(
            name: "EKUIKitTests",
            dependencies: ["EKUIKit"]),
    ]
)
