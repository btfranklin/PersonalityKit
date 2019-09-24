//  Created by B.T. Franklin on 8/23/19

import DunesailerUtilities

public struct BigFiveTraitConfiguration {
    
    // appreciation for art, emotion, adventure, unusual ideas, imagination, curiosity, and variety of experience
    // opposite: closedness
    public let openness: BigFiveOpenness
    
    // a tendency to show self-discipline, act dutifully, and aim for achievement;
    // planned rather than spontaneous behaviour
    // opposite: undisciplined
    public let conscientiousness: BigFiveConscientiousness
    
    // energy, positive emotions, surgency, and the tendency to seek stimulation and the company of others
    // opposite: introversion
    public let extraversion: BigFiveExtraversion
    
    // a tendency to be compassionate and cooperative rather than suspicious and antagonistic towards others
    // opposite: antagonism
    public let agreeableness: BigFiveAgreeableness
    
    // a tendency to experience unpleasant emotions easily, such as anger, anxiety, depression, or vulnerability;
    // sometimes called emotional instability
    // opposite: emotional stability
    public let neuroticism: BigFiveNeuroticism
}

extension BigFiveTraitConfiguration {
    public static func random(for lifeStage: LifeStage, ofGender gender: Gender) -> BigFiveTraitConfiguration {
        
        let openness = BigFiveOpenness.random(for: lifeStage)
        let conscientiousness = BigFiveConscientiousness.random(for: lifeStage)
        let extraversion = BigFiveExtraversion.random(for: lifeStage)
        let agreeableness = BigFiveAgreeableness.random(for: lifeStage)
        let neuroticism = BigFiveNeuroticism.random(for: lifeStage)
        
        return BigFiveTraitConfiguration(openness: openness,
                                        conscientiousness: conscientiousness,
                                        extraversion: extraversion,
                                        agreeableness: agreeableness,
                                        neuroticism: neuroticism)
    }
}
