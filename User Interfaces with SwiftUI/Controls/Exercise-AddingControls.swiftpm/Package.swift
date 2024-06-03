// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Exercise-AddingControls",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "Exercise-AddingControls",
            targets: ["AppModule"],
            bundleIdentifier: "exercise.Exercise-AddingControls",
            teamIdentifier: "5UV6NG6NND",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .gift),
            accentColor: .presetColor(.purple),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)