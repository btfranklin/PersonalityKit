//  Created by B.T. Franklin on 9/22/19

import DunesailerUtilities

public enum BigFiveConflictResolutionStyle {
    
    // Avoiding
    // concern for self:    low
    // concern for others:  low
    // try to escape or ignore conflict instead of dealing with it directly
    case avoiding
    
    // Obliging / Accommodating
    // concern for self:    low
    // concern for others:  high
    // try to modulate inconsistencies in order to satisfy the concerns of the other party
    case obliging
    
    // Integrating / Collaborating
    // concern for self:    high
    // concern for others:  high
    // try to achieve collaboration and reach solutions satisfactory to both the parties
    case integrating
    
    // Dominating / Competing
    // concern for self:    high
    // concern for others:  low
    // try to win relative to the other party
    case dominating
    
    // Compromising
    // concern for self:    moderate
    // concern for others:  moderate
    // both the actors try to give up something in order to reach a mutually-acceptable resolution
    case compromising
}

extension BigFiveConflictResolutionStyle {
    
    public static func random(for traitConfiguration: BigFiveTraitConfiguration, ofGender gender: Gender) -> BigFiveConflictResolutionStyle {
        
        var styleLevels = [BigFiveConflictResolutionStyle:Double]()
        
        /*
         Values based roughly on research presented here:
         Priyadarshini, S. (2017). Effect of Personality on Conflict Resolution Styles. IRA-International
         Journal of Management & Social Sciences (ISSN 2455-2267), 7(2), 196-207.
         */
        if gender == .male {
            styleLevels[.avoiding] = Double.randomGaussian(withStandardDeviation: 5, withMean: 25, withMinimum: 0)
            styleLevels[.obliging] = Double.randomGaussian(withStandardDeviation: 5, withMean: 25, withMinimum: 0)
            styleLevels[.integrating] = Double.randomGaussian(withStandardDeviation: 5, withMean: 25, withMinimum: 0)
            styleLevels[.dominating] = Double.randomGaussian(withStandardDeviation: 5, withMean: 25, withMinimum: 0)
            styleLevels[.compromising] = Double.randomGaussian(withStandardDeviation: 4, withMean: 25, withMinimum: 0)
            
        } else {
            styleLevels[.avoiding] = Double.randomGaussian(withStandardDeviation: 5, withMean: 25, withMinimum: 0)
            styleLevels[.obliging] = Double.randomGaussian(withStandardDeviation: 5, withMean: 25, withMinimum: 0)
            styleLevels[.integrating] = Double.randomGaussian(withStandardDeviation: 5, withMean: 25, withMinimum: 0)
            styleLevels[.dominating] = Double.randomGaussian(withStandardDeviation: 5, withMean: 23, withMinimum: 0)
            styleLevels[.compromising] = Double.randomGaussian(withStandardDeviation: 5, withMean: 27, withMinimum: 0)
        }
        
        styleLevels[.avoiding] = styleLevels[.avoiding]!
                + traitConfiguration.neuroticism.score * 0.7
                + traitConfiguration.openness.score * -0.1
                + traitConfiguration.agreeableness.score * 0.2
                + traitConfiguration.conscientiousness.score * -0.2
        
        styleLevels[.obliging] = styleLevels[.obliging]!
                + traitConfiguration.neuroticism.score * 0.2
                + traitConfiguration.extraversion.score * -0.2
                + traitConfiguration.openness.score * -0.1
                + traitConfiguration.agreeableness.score * 0.3
        
        styleLevels[.integrating] = styleLevels[.integrating]!
                + traitConfiguration.openness.score * 0.2
                + traitConfiguration.agreeableness.score * 0.2
                + traitConfiguration.conscientiousness.score * 0.2

        styleLevels[.dominating] = styleLevels[.dominating]!
                + traitConfiguration.neuroticism.score * -0.2
                + traitConfiguration.extraversion.score * 0.2
                + traitConfiguration.openness.score * -0.2
                + traitConfiguration.agreeableness.score * -0.4
                + traitConfiguration.conscientiousness.score * 0.2

        styleLevels[.compromising] = styleLevels[.compromising]!
                + traitConfiguration.neuroticism.score * 0.1
                + traitConfiguration.extraversion.score * 0.1
                + traitConfiguration.conscientiousness.score * -0.2
                
        let styleLevelsTupleArray = styleLevels.sorted{ $0.value > $1.value }
        return styleLevelsTupleArray.first!.key
    }
}
