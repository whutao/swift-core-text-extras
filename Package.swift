// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "swift-core-text-extras",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(name: "CoreTextExtras", targets: ["CoreTextExtras"])
    ],
    targets: [
        .target(name: "CoreTextExtras")
    ]
)
