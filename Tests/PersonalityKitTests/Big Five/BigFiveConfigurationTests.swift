//  Created by B.T. Franklin on 9/2/19

import XCTest
@testable import PersonalityKit

final class BigFiveConfigurationTests: XCTestCase {
    
    func testRandom() {
        let testConfiguration1 = BigFiveConfiguration.random(for: .child)
        print("Child configuration:")
        print(testConfiguration1)
        print("----------------------")
        
        let testConfiguration2 = BigFiveConfiguration.random(for: .youngAdult)
        print("Young adult configuration:")
        print(testConfiguration2)
        print("----------------------")

        let testConfiguration3 = BigFiveConfiguration.random(for: .adult)
        print("Adult configuration:")
        print(testConfiguration3)
        print("----------------------")
    }
}
