//  Created by B.T. Franklin on 9/2/19

import XCTest
@testable import PersonalityKit

final class BigFiveExtraversionTests: XCTestCase {
    
    func testInitializer() {
        let testTrait1 = BigFiveExtraversion(assertivenessScore: 1.0,
                                             sociabilityScore: 1.0,
                                             energyLevelScore: 1.0)
        XCTAssertEqual(1.0, testTrait1.score, accuracy: 0)
        
        let testTrait2 = BigFiveExtraversion(assertivenessScore: 0,
                                             sociabilityScore: 0,
                                             energyLevelScore: 0)
        XCTAssertEqual(0, testTrait2.score, accuracy: 0)

        let testTrait3 = BigFiveExtraversion(assertivenessScore: 0.5,
                                             sociabilityScore: 0.5,
                                             energyLevelScore: 0.5)
        XCTAssertEqual(0.5, testTrait3.score, accuracy: 0.01)
    }
    
    func testRandom() {
        let testTrait1 = BigFiveExtraversion.random(for: .child)
        print("Child extraversion:")
        print(testTrait1)
        print("----------------------")
        
        let testTrait2 = BigFiveExtraversion.random(for: .youngAdult)
        print("Young adult extraversion:")
        print(testTrait2)
        print("----------------------")

        let testTrait3 = BigFiveExtraversion.random(for: .adult)
        print("Adult extraversion:")
        print(testTrait3)
        print("----------------------")
    }
}
