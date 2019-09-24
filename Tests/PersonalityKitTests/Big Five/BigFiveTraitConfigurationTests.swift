//  Created by B.T. Franklin on 9/2/19

import XCTest
@testable import PersonalityKit

final class BigFiveTraitConfigurationTests: XCTestCase {
    
    func testRandom() {
        let testConfiguration1 = BigFiveTraitConfiguration.random(for: .child, ofGender: .male)
        print("Male child trait configuration:")
        print(testConfiguration1)
        print("----------------------")
        
        let testConfiguration2 = BigFiveTraitConfiguration.random(for: .youngAdult, ofGender: .male)
        print("Male young adult trait configuration:")
        print(testConfiguration2)
        print("----------------------")

        let testConfiguration3 = BigFiveTraitConfiguration.random(for: .adult, ofGender: .male)
        print("Male adult trait configuration:")
        print(testConfiguration3)
        print("----------------------")
        
        let testConfiguration4 = BigFiveTraitConfiguration.random(for: .child, ofGender: .female)
        print("Female child trait configuration:")
        print(testConfiguration4)
        print("----------------------")
        
        let testConfiguration5 = BigFiveTraitConfiguration.random(for: .youngAdult, ofGender: .female)
        print("Female young adult trait configuration:")
        print(testConfiguration5)
        print("----------------------")

        let testConfiguration6 = BigFiveTraitConfiguration.random(for: .adult, ofGender: .female)
        print("Female adult trait configuration:")
        print(testConfiguration6)
        print("----------------------")
    }
}
