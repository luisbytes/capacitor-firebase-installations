// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LuisbytesCapacitorFirebaseInstallations",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "LuisbytesCapacitorFirebaseInstallations",
            targets: ["FirebaseInstallationsPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "FirebaseInstallationsPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FirebaseInstallationsPlugin"),
        .testTarget(
            name: "FirebaseInstallationsPluginTests",
            dependencies: ["FirebaseInstallationsPlugin"],
            path: "ios/Tests/FirebaseInstallationsPluginTests")
    ]
)