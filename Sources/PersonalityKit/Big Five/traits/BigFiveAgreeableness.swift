//  Created by B.T. Franklin on 8/24/19

import DunesailerUtilities

public struct BigFiveAgreeableness: BigFivePersonalityTrait {
    
    public let score: Double
    
    public let compassionScore: Double
    public let respectfulnessScore: Double
    public let trustScore: Double
    
    public init(compassionScore: Double,
                respectfulnessScore: Double,
                trustScore: Double) {
        
        guard unitRange.contains(compassionScore)
            && unitRange.contains(respectfulnessScore)
            && unitRange.contains(trustScore) else {
                fatalError("All trait components must be in the range 0.0...1.0")
        }
        
        self.compassionScore = compassionScore
        self.respectfulnessScore = respectfulnessScore
        self.trustScore = trustScore
        
        self.score = (0.33334 * compassionScore) + (0.33333 * respectfulnessScore) + (0.33333 * trustScore)
    }
}

extension BigFiveAgreeableness {
    public static func random(for lifeStage: LifeStage) -> BigFiveAgreeableness {
        let agreeableness: BigFiveAgreeableness
        switch lifeStage {
        case .child:
            agreeableness = BigFiveAgreeableness(compassionScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                        withMean: 0.55,
                                                                                        withMaximum: 1.0,
                                                                                        withMinimum: 0.01),
                                                 respectfulnessScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                            withMean: 0.55,
                                                                                            withMaximum: 1.0,
                                                                                            withMinimum: 0.01),
                                                 trustScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                   withMean: 0.40,
                                                                                   withMaximum: 1.0,
                                                                                   withMinimum: 0.01))
        case .youngAdult:
            agreeableness = BigFiveAgreeableness(compassionScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                        withMean: 0.65,
                                                                                        withMaximum: 1.0,
                                                                                        withMinimum: 0.01),
                                                 respectfulnessScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                            withMean: 0.65,
                                                                                            withMaximum: 1.0,
                                                                                            withMinimum: 0.01),
                                                 trustScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                   withMean: 0.50,
                                                                                   withMaximum: 1.0,
                                                                                   withMinimum: 0.01))
        case .adult:
            agreeableness = BigFiveAgreeableness(compassionScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                        withMean: 0.75,
                                                                                        withMaximum: 1.0,
                                                                                        withMinimum: 0.01),
                                                 respectfulnessScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                            withMean: 0.75,
                                                                                            withMaximum: 1.0,
                                                                                            withMinimum: 0.01),
                                                 trustScore: Double.randomGaussian(withStandardDeviation: 0.18,
                                                                                   withMean: 0.60,
                                                                                   withMaximum: 1.0,
                                                                                   withMinimum: 0.01))
        }
        return agreeableness
    }
}
