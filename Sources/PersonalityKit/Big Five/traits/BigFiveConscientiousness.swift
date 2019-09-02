//  Created by B.T. Franklin on 8/24/19

public struct BigFiveConscientiousness: BigFivePersonalityTrait {
    
    public let score: Double
    
    public let organizationScore: Double
    public let responsibilityScore: Double
    public let productivityScore: Double
    
    public init(organizationScore: Double,
                responsibilityScore: Double,
                productivityScore: Double) {
        
        guard unitRange.contains(organizationScore)
            && unitRange.contains(responsibilityScore)
            && unitRange.contains(productivityScore) else {
                fatalError("All trait components must be in the range 0.0...1.0")
        }
        
        self.organizationScore = organizationScore
        self.responsibilityScore = responsibilityScore
        self.productivityScore = productivityScore
        
        self.score = (0.34 * organizationScore) + (0.33 * responsibilityScore) + (0.33 * productivityScore)
    }
}

extension BigFiveConscientiousness {
    public static func random(for lifeStage: LifeStage) -> BigFiveConscientiousness {
        let conscientiousness: BigFiveConscientiousness
        switch lifeStage {
        case .child:
            conscientiousness = BigFiveConscientiousness(organizationScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                  withMean: 0.50,
                                                                                                  withMaximum: 1.0,
                                                                                                  withMinimum: 0.01),
                                                         responsibilityScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                    withMean: 0.55,
                                                                                                    withMaximum: 1.0,
                                                                                                    withMinimum: 0.01),
                                                         productivityScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                  withMean: 0.50,
                                                                                                  withMaximum: 1.0,
                                                                                                  withMinimum: 0.01))
        case .youngAdult:
            conscientiousness = BigFiveConscientiousness(organizationScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                  withMean: 0.60,
                                                                                                  withMaximum: 1.0,
                                                                                                  withMinimum: 0.01),
                                                         responsibilityScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                    withMean: 0.65,
                                                                                                    withMaximum: 1.0,
                                                                                                    withMinimum: 0.01),
                                                         productivityScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                  withMean: 0.60,
                                                                                                  withMaximum: 1.0,
                                                                                                  withMinimum: 0.01))
        case .adult:
            conscientiousness = BigFiveConscientiousness(organizationScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                  withMean: 0.70,
                                                                                                  withMaximum: 1.0,
                                                                                                  withMinimum: 0.01),
                                                         responsibilityScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                    withMean: 0.75,
                                                                                                    withMaximum: 1.0,
                                                                                                    withMinimum: 0.01),
                                                         productivityScore: Double.randomGaussian(withStandardDeviation: 0.22,
                                                                                                  withMean: 0.70,
                                                                                                  withMaximum: 1.0,
                                                                                                  withMinimum: 0.01))
        }

        return conscientiousness
    }
}
