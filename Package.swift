// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "RxViewController",
  platforms: [
    .macOS(.v10_15), .iOS(.v12), .tvOS(.v12)
  ],
  products: [
    .library(name: "RxViewController", targets: ["RxViewController"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.0.0"),
  ],
  targets: [
    .target(name: "RxViewController", dependencies: [
        .product(name: "RxCocoa", package: "RxSwift")
    ]),
    .testTarget(name: "RxViewControllerTests", dependencies: ["RxViewController"]),
  ]
)
