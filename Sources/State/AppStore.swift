import Observation

@Observable
final class AppStore {
    var state: AppState

    init(state: AppState) {
        self.state = state
    }

    static func bootstrap() -> AppStore {
        AppStore(state: SeedData.initialState())
    }

    func send(_ intent: AppIntent) {
        switch intent {
        case .selectDestination(let destination):
            state.selectedDestination = destination

        case .selectContract(let id):
            state.selectedContractID = id

        case .executeSelectedContract:
            executeSelectedContract()

        case .dismissOutcome:
            state.activeOutcome = nil
            state.selectedDestination = .quarters

        case .advanceCycle:
            state.player.cycle += 1
            state.notices.insert(
                Notice(
                    kind: .system,
                    title: "Cycle advanced",
                    body: "Quarters systems register the passing of another operational window."
                ),
                at: 0
            )
        }
    }

    var selectedContract: Contract? {
        guard let id = state.selectedContractID else { return nil }
        return state.contracts.first(where: { $0.id == id })
    }

    var visualContext: VisualContext {
        VisualContextResolver.resolve(
            destination: state.selectedDestination,
            colony: state.selectedColony,
            player: state.player
        )
    }

    private func executeSelectedContract() {
        guard let contract = selectedContract else { return }

        let outcome = ContractEvaluator.evaluate(player: state.player, contract: contract)
        state.activeOutcome = outcome
        state.player.credits += outcome.rewardCredits
        state.player.progress += outcome.rewardProgress
        state.player.cycle += 1
        state.player.alignment = AlignmentState.adjusted(
            from: state.player.alignment,
            toward: contract.colony.convergence.direction,
            intensity: contract.colony.convergence.intensity
        )
        state.notices.insert(
            Notice(
                kind: .contract,
                title: contract.title,
                body: outcome.narrativeSummary
            ),
            at: 0
        )
    }
}
