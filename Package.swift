// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LuisbytesCapacitorFirebaseInstallations",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "LuisbytesCapacitorFirebaseInstallations",
            targets: ["FirebaseInstallationsPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "FirebaseInstallationsPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                .product(name: "FirebaseInstallations", package: "firebase-ios-sdk")
            ],
            path: "ios/Sources/FirebaseInstallationsPlugin"),
        .testTarget(
            name: "FirebaseInstallationsPluginTests",
            dependencies: ["FirebaseInstallationsPlugin"],
            path: "ios/Tests/FirebaseInstallationsPluginTests")
    ]
)
