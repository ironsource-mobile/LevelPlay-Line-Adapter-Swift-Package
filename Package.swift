// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Line-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "LineAdapter", targets: ["LineAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ly-ads-network/swift-package-manager-fivead", exact: "3.0.1"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "LineAdapter",
      dependencies: [
        "LineAdapterSDK",
        .product(name: "FiveAd", package: "swift-package-manager-fivead"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "LineAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/line-adapter/5.5.0/ISLineAdapter5.5.0.zip",
      checksum: "a8aa035f6f3a5e705760b27da08a90174f8470d10d0cebd19bddf151e26c40ae"
    )
  ]
)
