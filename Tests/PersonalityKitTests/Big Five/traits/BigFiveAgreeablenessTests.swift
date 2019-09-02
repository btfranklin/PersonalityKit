//  Created by B.T. Franklin on 9/2/19

import XCTest
@testable import PersonalityKit

final class BigFiveAgreeablenessTests: XCTestCase {
    
    func testInitializer() {
        let testTrait1 = BigFiveAgreeableness(compassionScore: 1.0,
                                              respectfulnessScore: 1.0,
                                              trustScore: 1.0)
        XCTAssertEqual(1.0, testTrait1.score, accuracy: 0)
        
        let testTrait2 = BigFiveAgreeableness(compassionScore: 0,
                                              respectfulnessScore: 0,
                                              trustScore: 0)
        XCTAssertEqual(0, testTrait2.score, accuracy: 0)

        let testTrait3 = BigFiveAgreeableness(compassionScore: 0.5,
                                              respectfulnessScore: 0.5,
                                              trustScore: 0.5)
        XCTAssertEqual(0.5, testTrait3.score, accuracy: 0.01)
    }
    
    func testRandom() {
        let testTrait1 = BigFiveAgreeableness.random(for: .child)
        print("Child agreeableness:")
        print(testTrait1)
        print("----------------------")
        
        let testTrait2 = BigFiveAgreeableness.random(for: .youngAdult)
        print("Young adult agreeableness:")
        print(testTrait2)
        print("----------------------")

        let testTrait3 = BigFiveAgreeableness.random(for: .adult)
        print("Adult agreeableness:")
        print(testTrait3)
        print("----------------------")
    }
}
