import SwiftUI

struct QuartersScreen: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            SurfaceCard(title: "Quarters", context: context) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("A sterile operational shell curves around the user without warmth, but not without intent.")
                        .font(.title3)
                        .foregroundStyle(context.palette.primaryText)
                    Text("Clean surfaces, low noise, and controlled light establish baseline trust. Personality should live in selective glow, not in structural disorder.")
                        .font(.body)
                        .foregroundStyle(context.palette.secondaryText)
                }
            }

            HStack(spacing: 16) {
                SurfaceCard(title: "State", context: context) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(store.state.player.name)
                            .font(.title2.weight(.semibold))
                            .foregroundStyle(context.palette.primaryText)
                        Text("Credits: \(store.state.player.credits)")
                        Text("Progress: \(store.state.player.progress)")
                        Text("Alignment: \(store.state.player.alignment.dominantDirection.rawValue.capitalized)")
                    }
                    .foregroundStyle(context.palette.secondaryText)
                }

                SurfaceCard(title: "Actions", context: context) {
                    VStack(alignment: .leading, spacing: 10) {
                        Button("Enter Nova Drift") {
                            store.send(.selectDestination(.novaDrift))
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(context.palette.accent)

                        Button("Advance Cycle") {
                            store.send(.advanceCycle)
                        }
                        .buttonStyle(.bordered)
                    }
                }
            }

            SurfaceCard(title: "Interface Glow", context: context) {
                HStack(spacing: 14) {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(context.palette.accent.opacity(0.40))
                        .frame(height: 70)
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color.white.opacity(0.85))
                        .frame(height: 70)
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(context.palette.accentSecondary.opacity(0.65))
                        .frame(height: 70)
                }
            }
        }
    }
}
