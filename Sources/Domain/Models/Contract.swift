struct Contract: Identifiable {
    let id: String
    let title: String
    let colony: Colony
    let rewardCredits: Int
    let rewardProgress: Int
    let apparentRisk: ContractSignal
    let narrativeHook: String
}
