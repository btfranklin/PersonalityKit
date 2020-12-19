PersonalityKit
==============

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/dunesailer/PersonalityKit/blob/master/LICENSE)
[![Platform](https://img.shields.io/badge/in-swift5.3-orange.svg)](https://github.com/apple/swift)
[![build](https://github.com/dunesailer/PersonalityKit/workflows/build/badge.svg)](https://github.com/dunesailer/PersonalityKit/actions?query=workflow%3Abuild)

Dunesailer Research's PersonalityKit package contains tools for generating and managing simulated human-like personalities, for use projects developed in the Swift programming language. Though the functionality provided is driven by the specific needs of Dunesailer Research itself, we believe there is a great deal of value to the general programmming public contained therein.


## Using the Package

The PersonalityKit package is a standard Swift package, and can easily be added to your project using Xcode. Simply select the *Swift Packages* tab of your project root, click the + button to add a dependency, search for "PersonalityKit", and add it. Please note that you will need to have Xcode connected to GitHub for this to work.

To include PersonalityKit in another Swift Package Manager package, add it to the `dependencies` attribute defined in your `Package.swift` file. You can select the version using the `from` parameter. For example:
```
dependencies: [
    .package(url: "https://github.com/dunesailer/PersonalityKit.git", from: "0.1.0")
]
```


## About Us

Dunesailer Research's mission is to build and advance technology that allows software to be creative in all realms.

Dunesailer is the brainchild and solo endeavor of B.T. Franklin, a software engineer and researcher located in Phoenix, Arizona, USA.
