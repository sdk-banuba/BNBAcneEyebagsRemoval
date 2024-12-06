// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-199-g2f4e3cf953"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-199-g2f4e3cf953/BNBAcneEyebagsRemoval.zip",
            checksum: "b315b72c7aa53f0f616d468ee5ba862ab3ec7d6be2e53f3c74aaba6cd3bbce1c"
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
