// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ViewFactory",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ViewFactory",
            targets: ["ViewFactory"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "SnapshotTesting",
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.9.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ViewFactory",
            dependencies: []),
        .testTarget(
            name: "ViewFactoryTests",
            dependencies: ["ViewFactory"]),
        .testTarget(
            name: "ViewFactorySnapshotTests",
            dependencies: ["ViewFactory", "SnapshotTesting"],
            resources: [
                .process("Factories/Button/__Snapshots__/"),
                .process("Factories/Input/__Snapshots__/"),
                .process("Factories/Label/__Snapshots__/"),
                .process("Factories/Stack/__Snapshots__/")
            ])
    ]
)
