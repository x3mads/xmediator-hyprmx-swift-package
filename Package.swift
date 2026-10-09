// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorHyprMX",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorHyprMX", targets: ["XMediatorHyprMXTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JunGroupProductions/HyprMX-SDK-SPM.git", exact: "6.4.7"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.145.0")),
    ],
    targets: [
        .target(
            name: "XMediatorHyprMXTarget",
            dependencies: [
                .target(name: "XMediatorHyprMX"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "HyprMX", package: "HyprMX-SDK-SPM"),
            ],
            path: "XMediatorHyprMXTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorHyprMX",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorHyprMX/XMediatorHyprMX-6.4.7.0.zip",
            checksum: "5479f2f33ec12d79e02ab1b31c1d37db45f397098ecd8037054b25635cade49d"
        ),
    ]
)
