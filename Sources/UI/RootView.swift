import SwiftUI

struct RootView: View {
    @Bindable var store: AppStore

    var body: some View {
        let context = store.visualContext

        NavigationSplitView {
            SidebarView(selectedDestination: $store.state.selectedDestination, context: context)
        } detail: {
            HStack(spacing: 0) {
                MainWorkspaceView(store: store, context: context)
                ContextPanelView(store: store, context: context)
                    .frame(width: 320)
            }
            .background(
                ZStack {
                    context.palette.background
                    backgroundAtmosphere(for: context)
                }
            )
            .overlay(alignment: .top) {
                HeaderBandView(store: store, context: context)
            }
        }
        .navigationSplitViewStyle(.balanced)
    }

    @ViewBuilder
    private func backgroundAtmosphere(for context: VisualContext) -> some View {
        if context.destination == .novaDrift {
            LinearGradient(
                colors: [
                    Color(hex: "090512"),
                    Color(hex: "220A35"),
                    Color(hex: "0B1332"),
                    Color(hex: "090512")
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .overlay(
                RadialGradient(
                    colors: [
                        context.palette.accent.opacity(0.30),
                        .clear
                    ],
                    center: .topLeading,
                    startRadius: 40,
                    endRadius: 460
                )
            )
            .overlay(
                RadialGradient(
                    colors: [
                        context.palette.accentSecondary.opacity(0.25),
                        .clear
                    ],
                    center: .bottomTrailing,
                    startRadius: 30,
                    endRadius: 420
                )
            )
        } else {
            LinearGradient(
                colors: [
                    context.palette.background,
                    context.palette.elevated.opacity(0.92),
                    context.palette.background
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.82)
        }
    }
}
