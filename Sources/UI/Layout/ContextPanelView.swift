import SwiftUI

struct ContextPanelView: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Color.clear.frame(height: 72)

            SurfaceCard(title: "Operational Context", context: context) {
                VStack(alignment: .leading, spacing: 8) {
                    ContextMetricRow(label: "Colony", value: store.state.selectedColony.name)
                    ContextMetricRow(label: "Convergence", value: "\(context.convergenceDirection.rawValue.capitalized) · \(context.convergenceBand.rawValue.capitalized)")
                    ContextMetricRow(label: "Resonance", value: context.resonance.rawValue.capitalized)
                    ContextMetricRow(label: "Loadout", value: store.state.player.loadoutSummary)
                }
            }

            SurfaceCard(title: "Notices", context: context) {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(store.state.notices.prefix(3)) { notice in
                        VStack(alignment: .leading, spacing: 4) {
                            Text(notice.title)
                                .font(.headline)
                                .foregroundStyle(context.palette.primaryText)
                            Text(notice.body)
                                .font(.subheadline)
                                .foregroundStyle(context.palette.secondaryText)
                        }
                    }
                }
            }

            Spacer()
        }
        .padding(.horizontal, 18)
        .background(panelBackground)
    }

    @ViewBuilder
    private var panelBackground: some View {
        if context.destination == .novaDrift {
            LinearGradient(
                colors: [
                    Color(hex: "120A20"),
                    context.palette.panel.opacity(0.95)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
        } else {
            LinearGradient(
                colors: [
                    context.palette.elevated,
                    context.palette.panel.opacity(0.96)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
        }
    }
}
