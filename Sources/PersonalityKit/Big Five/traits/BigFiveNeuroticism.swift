//  Created by B.T. Franklin on 8/24/19

import Foundation

public struct BigFiveNeuroticism: Scorable {
    
    public let score: Double
    
    public let anxietyScore: Double
    public let emotionalVolatilityScore: Double
    public let depressionScore: Double
    
    public init(anxietyScore: Double,
                emotionalVolatilityScore: Double,
                depressionScore: Double) {
        
        guard unitRange.contains(anxietyScore)
            && unitRange.contains(emotionalVolatilityScore)
            && unitRange.contains(depressionScore) else {
                fatalError("All trait components must be in the range 0.0...1.0")
        }
        
        self.anxietyScore = anxietyScore
        self.emotionalVolatilityScore = emotionalVolatilityScore
        self.depressionScore = depressionScore
        
        self.score = (0.33334 * anxietyScore) + (0.33333 * emotionalVolatilityScore) + (0.33333 * depressionScore)
    }
}

extension BigFiveNeuroticism {
    public static func random(for lifeStage: LifeStage) -> BigFiveNeuroticism {
        let neuroticism: BigFiveNeuroticism
        switch lifeStage {
        case .child:
            neuroticism = BigFiveNeuroticism(anxietyScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                 withMean: 0.70,
                                                                                 withMaximum: 1.0,
                                                                                 withMinimum: 0.01),
                                             emotionalVolatilityScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                             withMean: 0.60,
                                                                                             withMaximum: 1.0,
                                                                                             withMinimum: 0.01),
                                             depressionScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                    withMean: 0.55,
                                                                                    withMaximum: 1.0,
                                                                                    withMinimum: 0.01))
        case .youngAdult:
            neuroticism = BigFiveNeuroticism(anxietyScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                 withMean: 0.60,
                                                                                 withMaximum: 1.0,
                                                                                 withMinimum: 0.01),
                                             emotionalVolatilityScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                             withMean: 0.50,
                                                                                             withMaximum: 1.0,
                                                                                             withMinimum: 0.01),
                                             depressionScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                    withMean: 0.45,
                                                                                    withMaximum: 1.0,
                                                                                    withMinimum: 0.01))
        case .adult:
            neuroticism = BigFiveNeuroticism(anxietyScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                 withMean: 0.50,
                                                                                 withMaximum: 1.0,
                                                                                 withMinimum: 0.01),
                                             emotionalVolatilityScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                             withMean: 0.40,
                                                                                             withMaximum: 1.0,
                                                                                             withMinimum: 0.01),
                                             depressionScore: Double.randomGaussian(withStandardDeviation: 0.32,
                                                                                    withMean: 0.35,
                                                                                    withMaximum: 1.0,
                                                                                    withMinimum: 0.01))
        }

        return neuroticism
    }
}

extension BigFiveNeuroticism: CustomStringConvertible {
    public var description: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumSignificantDigits = 2
        return "\(formatter.string(for: score)!) {A:\(formatter.string(for: anxietyScore)!) E:\(formatter.string(for: emotionalVolatilityScore)!) D:\(formatter.string(for: depressionScore)!)}"
    }
}
