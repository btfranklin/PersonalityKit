//  Created by B.T. Franklin on 9/22/19

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
