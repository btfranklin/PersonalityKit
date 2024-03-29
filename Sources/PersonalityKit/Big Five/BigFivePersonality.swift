//  Created by B.T. Franklin on 9/23/19

public struct BigFivePersonality {
    
    public let traitConfiguration: BigFiveTraitConfiguration
    
    public let conflictResolutionConfiguration: BigFiveConflictResolutionConfiguration
}

extension BigFivePersonality {
    public static func random(for lifeStage: LifeStage, ofGender gender: BinaryGender) -> BigFivePersonality {
        let traitConfiguration = BigFiveTraitConfiguration.random(for: lifeStage, ofGender: gender)
        let conflictResolutionConfiguration = BigFiveConflictResolutionConfiguration.random(for: traitConfiguration)
        
        return BigFivePersonality(traitConfiguration: traitConfiguration,
                                  conflictResolutionConfiguration: conflictResolutionConfiguration)
    }
}
