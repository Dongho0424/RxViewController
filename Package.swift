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
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
  ],
  targets: [
    .target(name: "RxViewController", dependencies: ["RxSwift", "RxCocoa"]),
    .testTarget(name: "RxViewControllerTests", dependencies: ["RxViewController"]),
  ]
)
