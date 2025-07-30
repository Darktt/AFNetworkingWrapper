// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AFNetworkingWrapper",
    platforms: [
        .iOS(.v11), .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "AFNetworking",
            targets: ["AFNetworking"]
        )
    ],
    targets: [
        .target(
            name: "AFNetworking",
            path: "AFNetworking/AFNetworking",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .define("AF_APP_EXTENSIONS")
            ]
        )
    ]
)
