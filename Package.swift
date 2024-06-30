// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "swift-core-text-extras",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(name: "CoreTextExtras", targets: ["CoreTextExtras"])
    ],
    targets: [
        .target(name: "CoreTextExtras")
    ]
)
