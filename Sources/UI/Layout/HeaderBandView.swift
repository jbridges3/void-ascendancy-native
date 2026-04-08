import SwiftUI

struct HeaderBandView: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(store.state.selectedDestination.rawValue)
                    .font(.system(size: 26, weight: .semibold, design: .rounded))
                    .foregroundStyle(context.palette.primaryText)
                Text("\(store.state.selectedColony.name) · Cycle \(store.state.player.cycle)")
                    .font(.subheadline)
                    .foregroundStyle(context.palette.secondaryText)
            }

            Spacer()

            if let outcome = store.state.activeOutcome {
                Button("Dismiss \(outcome.classification.rawValue)") {
                    store.send(.dismissOutcome)
                }
                .buttonStyle(.borderedProminent)
                .tint(context.palette.accent)
            }
        }
        .padding(.horizontal, 28)
        .padding(.top, 20)
        .padding(.bottom, 12)
        .background(.ultraThinMaterial.opacity(0.45))
    }
}
