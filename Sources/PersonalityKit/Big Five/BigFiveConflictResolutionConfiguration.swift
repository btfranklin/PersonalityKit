//  Created by B.T. Franklin on 9/23/19

public struct BigFiveConflictResolutionConfiguration {
    
    public let conflictResolutionStyle: BigFiveConflictResolutionStyle
    
    public let concernForSelf: PriorityLevel
    
    public let concernForOthers: PriorityLevel
}

extension BigFiveConflictResolutionConfiguration {
    public static func random(for traitConfiguration: BigFiveTraitConfiguration) -> BigFiveConflictResolutionConfiguration {
        let conflictResolutionStyle = BigFiveConflictResolutionStyle.random(for: traitConfiguration)
        
        let concernForSelf: PriorityLevel
        let concernForOthers: PriorityLevel
        switch conflictResolutionStyle {
        case .avoiding:
            concernForSelf = .low
            concernForOthers = .low
        case .obliging:
            concernForSelf = .low
            concernForOthers = .high
        case .integrating:
            concernForSelf = .high
            concernForOthers = .high
        case .dominating:
            concernForSelf = .high
            concernForOthers = .low
        case .compromising:
            concernForSelf = .moderate
            concernForOthers = .moderate
        }
        
        return BigFiveConflictResolutionConfiguration(conflictResolutionStyle: conflictResolutionStyle,
                                                      concernForSelf: concernForSelf,
                                                      concernForOthers: concernForOthers)
    }
}

