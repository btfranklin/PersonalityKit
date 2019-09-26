//  Created by B.T. Franklin on 9/24/19

import XCTest
@testable import PersonalityKit

final class BigFiveConflictResolutionStyleTests: XCTestCase {
    
    func testRandom() {
        let testConfiguration = BigFiveTraitConfiguration.random(for: .adult, ofGender: .male)
        print(testConfiguration)
        var buckets: [BigFiveConflictResolutionStyle:Int] = [
            .avoiding: 0,
            .obliging: 0,
            .integrating: 0,
            .dominating: 0,
            .compromising: 0
        ]
        for _ in 0...100 {
            let style = BigFiveConflictResolutionStyle.random(for: testConfiguration)
            buckets[style] = buckets[style]!+1
        }
        print(buckets)
    }
}
