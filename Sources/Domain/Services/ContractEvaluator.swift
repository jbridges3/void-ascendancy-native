enum ContractEvaluator {
    static func evaluate(player: Player, contract: Contract) -> ContractOutcome {
        let alignmentBonus: Double
        switch contract.colony.convergence.direction {
        case .void:
            alignmentBonus = player.alignment.void - player.alignment.elpis
        case .elpis:
            alignmentBonus = player.alignment.elpis - player.alignment.void
        case .contested:
            alignmentBonus = 0
        }

        let signalModifier: Double
        switch contract.apparentRisk {
        case .favorable:
            signalModifier = 0.18
        case .uncertain:
            signalModifier = 0.0
        case .hazardous:
            signalModifier = -0.22
        }

        let score = alignmentBonus + signalModifier + (Double(player.progress) / 100.0)

        if score >= 0.35 {
            return ContractOutcome(
                classification: .strongSuccess,
                rewardCredits: contract.rewardCredits + 200,
                rewardProgress: contract.rewardProgress + 2,
                narrativeSummary: "The system opens under pressure and closes behind you without protest. Whatever watched the passage chose not to interfere."
            )
        } else if score >= 0.05 {
            return ContractOutcome(
                classification: .success,
                rewardCredits: contract.rewardCredits,
                rewardProgress: contract.rewardProgress,
                narrativeSummary: "The operation resolves cleanly enough to count. Residue remains, but not enough to define the story."
            )
        } else if score >= -0.2 {
            return ContractOutcome(
                classification: .riskySuccess,
                rewardCredits: contract.rewardCredits / 2,
                rewardProgress: contract.rewardProgress,
                narrativeSummary: "You get through, but the system answers in kind. Something about the route will remember you."
            )
        } else {
            return ContractOutcome(
                classification: .failure,
                rewardCredits: 0,
                rewardProgress: 0,
                narrativeSummary: "The surface gives way before the truth does. By the time the path closes, the interface has already judged the attempt."
            )
        }
    }
}
