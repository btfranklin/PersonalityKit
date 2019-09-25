//  Created by B.T. Franklin on 9/23/19

import DunesailerUtilities

public struct BigFivePersonality {
    
    public let traitConfiguration: BigFiveTraitConfiguration
    
    public let conflictResolutionConfiguration: BigFiveConflictResolutionConfiguration
}

extension BigFivePersonality {
    public static func random(for lifeStage: LifeStage, ofGender gender: Gender) -> BigFivePersonality {
        let traitConfiguration = BigFiveTraitConfiguration.random(for: lifeStage, ofGender: gender)
        let conflictResolutionConfiguration = BigFiveConflictResolutionConfiguration.random(for: traitConfiguration)
        
        return BigFivePersonality(traitConfiguration: traitConfiguration,
                                  conflictResolutionConfiguration: conflictResolutionConfiguration)
    }
}
