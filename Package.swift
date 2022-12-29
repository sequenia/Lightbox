// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Lightbox",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Lightbox",
            targets: ["Lightbox"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0")
    ],
    targets: [
        .target(
            name: "Lightbox",
            dependencies: [
                .product(name: "SDWebImage", package: "SDWebImage")
            ],
            path: "./Source/"
        )
    ],
    swiftLanguageVersions: [.v5]
)
