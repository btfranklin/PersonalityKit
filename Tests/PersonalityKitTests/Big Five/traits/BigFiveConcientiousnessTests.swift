//  Created by B.T. Franklin on 9/2/19

import XCTest
@testable import PersonalityKit

final class BigFiveConscientiousnessTests: XCTestCase {
    
    func testInitializer() {
        let testTrait1 = BigFiveConscientiousness(organizationScore: unitRange.upperBound,
                                                  responsibilityScore: unitRange.upperBound,
                                                  productivityScore: unitRange.upperBound)
        XCTAssertEqual(unitRange.upperBound, testTrait1.score, accuracy: 0)
        
        let testTrait2 = BigFiveConscientiousness(organizationScore: unitRange.lowerBound,
                                                  responsibilityScore: unitRange.lowerBound,
                                                  productivityScore: unitRange.lowerBound)
        XCTAssertEqual(unitRange.lowerBound, testTrait2.score, accuracy: 0)

        let testTrait3 = BigFiveConscientiousness(organizationScore: 0.5,
                                                  responsibilityScore: 0.5,
                                                  productivityScore: 0.5)
        XCTAssertEqual(0.5, testTrait3.score, accuracy: 0.01)
    }
    
    func testRandom() {
        let testTrait1 = BigFiveConscientiousness.random(for: .child)
        print("Child conscientiousness:")
        print(testTrait1)
        print("----------------------")
        
        let testTrait2 = BigFiveConscientiousness.random(for: .youngAdult)
        print("Young adult conscientiousness:")
        print(testTrait2)
        print("----------------------")

        let testTrait3 = BigFiveConscientiousness.random(for: .adult)
        print("Adult conscientiousness:")
        print(testTrait3)
        print("----------------------")
    }
}
