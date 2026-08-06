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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/line-adapter/5.6.0/ISLineAdapter5.6.0.zip",
      checksum: "476c0f54886e8a376e0bab3a22262aacb031e70d18ecead7ca8ba858435677ed"
    )
  ]
)
