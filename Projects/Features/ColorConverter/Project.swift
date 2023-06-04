// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.staticFramework(
    name: "ColorConverter",
    packages: [],
    baseSettings: [:],
    dependencies: [
        .common(.coralKit),
        .common(.coralUI),
        .external(.oneWay),
    ],
    includeExample: true
)
