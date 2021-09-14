// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxCocoa-Texture",
    defaultLocalization: "ru",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RxCocoa-Texture",
            targets: ["RxCocoa-Texture"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/while366/Texture.git", .branch("spm")),
    ],
    targets: [
        .target(
            name: "RxCocoa-Texture",
            dependencies: [
                "RxSwift",
                
                .product(name: "AsyncDisplayKit", package: "Texture"),
                .product(name: "RxCocoa", package: "RxSwift"),
            ])
    ]
)
