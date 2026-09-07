// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Line-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "LineAdapter", targets: ["LineAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ly-ads-network/swift-package-manager-fivead", exact: "3.1.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/line-adapter/5.8.0/ISLineAdapter5.8.0.zip",
      checksum: "d3ff23a4cd9f7c93d895dbb774ffc24dacd541f45d6928db65f6a5b54603105a"
    )
  ]
)
