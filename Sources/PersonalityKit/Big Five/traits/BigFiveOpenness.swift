//  Created by B.T. Franklin on 8/24/19

public struct BigFiveOpenness: BigFivePersonalityTrait {
    
    public let score: Double
    
    public let aestheticSensitivityScore: Double
    public let creativeImaginationScore: Double
    public let intellectualCuriosityScore: Double
    
    public init(aestheticSensitivityScore: Double,
                creativeImaginationScore: Double,
                intellectualCuriosityScore: Double) {
        
        guard unitRange.contains(aestheticSensitivityScore)
            && unitRange.contains(creativeImaginationScore)
            && unitRange.contains(intellectualCuriosityScore) else {
                fatalError("All trait components must be in the range 0.0...1.0")
        }
        
        self.aestheticSensitivityScore = aestheticSensitivityScore
        self.creativeImaginationScore = creativeImaginationScore
        self.intellectualCuriosityScore = intellectualCuriosityScore
        
        self.score = (0.33334 * aestheticSensitivityScore) + (0.33333 * creativeImaginationScore) + (0.33333 * intellectualCuriosityScore)
    }
}

extension BigFiveOpenness {
    public static func random(for lifeStage: LifeStage) -> BigFiveOpenness {
        let openness: BigFiveOpenness
        switch lifeStage {
        case .child:
            openness = BigFiveOpenness(aestheticSensitivityScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                        withMean: 0.80,
                                                                                        withMaximum: 1.0,
                                                                                        withMinimum: 0.01),
                                       creativeImaginationScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                       withMean: 0.85,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01),
                                       intellectualCuriosityScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                         withMean: 0.85,
                                                                                         withMaximum: 1.0,
                                                                                         withMinimum: 0.01))
        case .youngAdult:
            openness = BigFiveOpenness(aestheticSensitivityScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                        withMean: 0.70,
                                                                                        withMaximum: 1.0,
                                                                                        withMinimum: 0.01),
                                       creativeImaginationScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                       withMean: 0.75,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01),
                                       intellectualCuriosityScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                         withMean: 0.75,
                                                                                         withMaximum: 1.0,
                                                                                         withMinimum: 0.01))
        case .adult:
            openness = BigFiveOpenness(aestheticSensitivityScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                        withMean: 0.60,
                                                                                        withMaximum: 1.0,
                                                                                        withMinimum: 0.01),
                                       creativeImaginationScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                       withMean: 0.65,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01),
                                       intellectualCuriosityScore: Double.randomGaussian(withStandardDeviation: 0.16,
                                                                                         withMean: 0.65,
                                                                                         withMaximum: 1.0,
                                                                                         withMinimum: 0.01))
        }

        return openness
    }
}
