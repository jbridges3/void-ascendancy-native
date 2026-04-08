import SwiftUI

struct NovaDriftScreen: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            SurfaceCard(title: "Nova Drift", context: context) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("The goggles close the distance. Drift is not a menu layer. It is full immersion into synthetic signal-space.")
                        .font(.title3)
                        .foregroundStyle(context.palette.primaryText)
                    Text("Presentation should be bold, saturated, and unashamedly cybernetic. It gives posture, temptation, and danger before it gives facts.")
                        .foregroundStyle(context.palette.secondaryText)
                }
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

            SurfaceCard(title: "Signal Layer", context: context) {
                HStack(spacing: 12) {
                    neonStrip(color: context.palette.accent, width: 140)
                    neonStrip(color: context.palette.accentSecondary, width: 110)
                    neonStrip(color: Color(hex: "7C4DFF"), width: 90)
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

    private func neonStrip(color: Color, width: CGFloat) -> some View {
        Capsule()
            .fill(color.opacity(0.95))
            .frame(width: width, height: 12)
            .shadow(color: color.opacity(0.55), radius: 18, x: 0, y: 0)
    }
}
