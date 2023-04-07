// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "MyPlugin",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "tuist-my-cli", targets: ["tuist-my-cli"]),
    ],
    dependencies: [
      .package(url: "https://github.com/tuist/ProjectAutomation", .exact("3.2.0")),
      .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMinor(from: "1.0.0")),
    ],
    targets: [
        .executableTarget(
            name: "tuist-my-cli",
            dependencies: [
              .product(name: "ProjectAutomation", package: "ProjectAutomation"),
              .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
    ]
)
