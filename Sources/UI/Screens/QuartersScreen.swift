import SwiftUI

struct QuartersScreen: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            SurfaceCard(title: "Quarters", context: context) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("A private operational shell holds together for now. Exterior systems remain less certain.")
                        .font(.title3)
                        .foregroundStyle(context.palette.primaryText)
                    Text("The space is calm, but not untouched. Notices gather at the edges before they ask to be read.")
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
        }
    }
}
