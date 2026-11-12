// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Line-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "LineAdapter", targets: ["LineAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ly-ads-network/swift-package-manager-fivead", exact: "3.1.2"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/line-adapter/5.9.0/ISLineAdapter5.9.0.zip",
      checksum: "f8b827c2484294ab5d2e6e21b4191dab6f6e94bbe5e6f155e41d5d7cc59c592c"
    )
  ]
)
