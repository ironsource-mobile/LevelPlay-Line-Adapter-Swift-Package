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
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "LineAdapter",
      dependencies: [
        "LineAdapterSDK",
        .product(name: "FiveAd", package: "swift-package-manager-fivead"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "LineAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/line-adapter/5.4.0/ISLineAdapter5.4.0.zip",
      checksum: "d6b946d2f18ae90c7ca612dbfa26ebcec112f3d578b251d48f1e9d590eaa85d3"
    )
  ]
)
