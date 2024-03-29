// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.1-71-gf7bd3a54e"

let package = Package(
    name: "BNBAcneEyebagsRemoval",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBAcneEyebagsRemoval",
            targets: [
                "BNBAcneEyebagsRemoval",
                "BNBAcneEyebagsRemoval_BNBSdkCore",
                "BNBAcneEyebagsRemoval_BNBEffectPlayer",
                "BNBAcneEyebagsRemoval_BNBScripting",
                "BNBAcneEyebagsRemoval_BNBFaceTracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBAcneEyebagsRemoval",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.11.1-71-gf7bd3a54e/BNBAcneEyebagsRemoval.zip",
            checksum: "fa099a9da7d7fe342bd5a394f259f12819f5b22b9b5f615b57b6e7313668fc11"
        ),
        .target(
            name: "BNBAcneEyebagsRemoval_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemoval_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemoval_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBAcneEyebagsRemoval_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
