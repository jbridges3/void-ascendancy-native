import SwiftUI

struct ProfileScreen: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        SurfaceCard(title: "Profile", context: context) {
            VStack(alignment: .leading, spacing: 10) {
                Text(store.state.player.name)
                    .font(.title2.weight(.semibold))
                    .foregroundStyle(context.palette.primaryText)
                Text("Dominant alignment: \(store.state.player.alignment.dominantDirection.rawValue.capitalized)")
                Text("Cycle: \(store.state.player.cycle)")
                Text("Credits: \(store.state.player.credits)")
                Text("Progress: \(store.state.player.progress)")
            }
            .foregroundStyle(context.palette.secondaryText)
        }
    }
}
