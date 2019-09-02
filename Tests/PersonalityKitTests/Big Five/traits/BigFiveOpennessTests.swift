//  Created by B.T. Franklin on 9/2/19

import XCTest
@testable import PersonalityKit

final class BigFiveOpennessTests: XCTestCase {
    
    func testInitializer() {
        let testTrait1 = BigFiveOpenness(aestheticSensitivityScore: unitRange.upperBound,
                                         creativeImaginationScore: unitRange.upperBound,
                                         intellectualCuriosityScore: unitRange.upperBound)
        XCTAssertEqual(unitRange.upperBound, testTrait1.score, accuracy: 0)
        
        let testTrait2 = BigFiveOpenness(aestheticSensitivityScore: unitRange.lowerBound,
                                         creativeImaginationScore: unitRange.lowerBound,
                                         intellectualCuriosityScore: unitRange.lowerBound)
        XCTAssertEqual(unitRange.lowerBound, testTrait2.score, accuracy: 0)

        let testTrait3 = BigFiveOpenness(aestheticSensitivityScore: 0.5,
                                         creativeImaginationScore: 0.5,
                                         intellectualCuriosityScore: 0.5)
        XCTAssertEqual(0.5, testTrait3.score, accuracy: 0.01)
    }
    
    func testRandom() {
        let testTrait1 = BigFiveOpenness.random(for: .child)
        print("Child openness:")
        print(testTrait1)
        print("----------------------")
        
        let testTrait2 = BigFiveOpenness.random(for: .youngAdult)
        print("Young adult openness:")
        print(testTrait2)
        print("----------------------")

        let testTrait3 = BigFiveOpenness.random(for: .adult)
        print("Adult openness:")
        print(testTrait3)
        print("----------------------")
    }
}
