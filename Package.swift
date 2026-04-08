// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "VoidAscendancyNative",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .executable(
            name: "VoidAscendancyNative",
            targets: ["VoidAscendancyNative"]
        )
    ],
    targets: [
        .executableTarget(
            name: "VoidAscendancyNative",
            path: "Sources"
        )
    ]
)
