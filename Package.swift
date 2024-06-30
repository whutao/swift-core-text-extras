// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "swift-core-text-extras",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "CoreTextExtras", targets: ["CoreTextExtras"])
    ],
    targets: [
        .target(name: "CoreTextExtras")
    ]
)
