import SwiftUI

struct NovaDriftScreen: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            SurfaceCard(title: "Nova Drift", context: context) {
                Text("Contracts surface as partial truths. The interface offers posture, not certainty.")
                    .font(.title3)
                    .foregroundStyle(context.palette.primaryText)
            }

            ForEach(store.state.contracts) { contract in
                Button {
                    store.state.selectedColony = contract.colony
                    store.send(.selectContract(contract.id))
                } label: {
                    ContractCardView(
                        contract: contract,
                        isSelected: store.state.selectedContractID == contract.id,
                        context: context
                    )
                }
                .buttonStyle(.plain)
            }

            if let contract = store.selectedContract {
                SurfaceCard(title: "Contract Detail", context: context) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(contract.title)
                            .font(.title2.weight(.semibold))
                            .foregroundStyle(context.palette.primaryText)
                        Text(contract.narrativeHook)
                            .foregroundStyle(context.palette.secondaryText)
                        Text("Target colony: \(contract.colony.name)")
                            .foregroundStyle(context.palette.accentSecondary)

                        Button("Execute Contract") {
                            store.send(.executeSelectedContract)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(context.palette.accent)
                    }
                }
            }

            if let outcome = store.state.activeOutcome {
                SurfaceCard(title: "Outcome", context: context) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(outcome.classification.rawValue)
                            .font(.title2.weight(.semibold))
                            .foregroundStyle(context.palette.primaryText)
                        Text(outcome.narrativeSummary)
                            .foregroundStyle(context.palette.secondaryText)
                        Text("Rewards: CR \(outcome.rewardCredits) · PR \(outcome.rewardProgress)")
                            .foregroundStyle(context.palette.accentSecondary)
                    }
                }
            }
        }
    }
}
