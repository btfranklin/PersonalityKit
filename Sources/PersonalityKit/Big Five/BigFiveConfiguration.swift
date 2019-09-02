//  Created by B.T. Franklin on 8/23/19

public struct BigFiveConfiguration {
    
    // appreciation for art, emotion, adventure, unusual ideas, imagination, curiosity, and variety of experience
    public let openness: BigFiveOpenness
    
    // a tendency to show self-discipline, act dutifully, and aim for achievement;
    // planned rather than spontaneous behaviour
    public let conscientiousness: BigFiveConscientiousness
    
    // energy, positive emotions, surgency, and the tendency to seek stimulation and the company of others
    public let extraversion: BigFiveExtraversion
    
    // a tendency to be compassionate and cooperative rather than suspicious and antagonistic towards others
    public let agreeableness: BigFiveAgreeableness
    
    // a tendency to experience unpleasant emotions easily, such as anger, anxiety, depression, or vulnerability;
    // sometimes called emotional instability
    public let neuroticism: BigFiveNeuroticism
}

extension BigFiveConfiguration {
    public static func random(for lifeStage: LifeStage) -> BigFiveConfiguration {
        return BigFiveConfiguration(openness: BigFiveOpenness.random(for: lifeStage),
                                    conscientiousness: BigFiveConscientiousness.random(for: lifeStage),
                                    extraversion: BigFiveExtraversion.random(for: lifeStage),
                                    agreeableness: BigFiveAgreeableness.random(for: lifeStage),
                                    neuroticism: BigFiveNeuroticism.random(for: lifeStage))
    }
}
