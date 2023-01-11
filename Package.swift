// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/carlosmonzon/KMMTestSPM/com/prezzee/shared/analytics-kmmbridge/0.2.1673394944560/analytics-kmmbridge-0.2.1673394944560.zip"
let remoteKotlinChecksum = "e310f1f5ab88497589fd7ad24c8a3b6531e55dfff040a6a1b5702c8b4e285349"
let packageName = "KMMAnalytics"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)