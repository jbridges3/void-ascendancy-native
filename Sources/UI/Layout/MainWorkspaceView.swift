import SwiftUI

struct MainWorkspaceView: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        ZStack {
            workspaceAtmosphere
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Color.clear.frame(height: 72)
                    content
                }
                .padding(28)
            }
        }
    }

    @ViewBuilder
    private var workspaceAtmosphere: some View {
        if context.destination == .novaDrift {
            ZStack {
                context.palette.background
                RadialGradient(
                    colors: [
                        context.palette.accent.opacity(0.22),
                        .clear
                    ],
                    center: .topTrailing,
                    startRadius: 60,
                    endRadius: 420
                )
                .blur(radius: 28)

                RadialGradient(
                    colors: [
                        context.palette.accentSecondary.opacity(0.20),
                        .clear
                    ],
                    center: .bottomLeading,
                    startRadius: 40,
                    endRadius: 360
                )
                .blur(radius: 24)
            }
        } else {
            ZStack {
                context.palette.background
                RadialGradient(
                    colors: [
                        context.palette.accent.opacity(context.anomalyAllowance == .expressive ? 0.10 : 0.04),
                        .clear
                    ],
                    center: .topTrailing,
                    startRadius: 80,
                    endRadius: 520
                )
                .blur(radius: 30)
            }
        }
    }

    @ViewBuilder
    private var content: some View {
        switch store.state.selectedDestination {
        case .quarters:
            QuartersScreen(store: store, context: context)
        case .novaDrift:
            NovaDriftScreen(store: store, context: context)
        case .dockside:
            ThemePreviewScreen(store: store)
        case .workbench:
            PlaceholderScreen(
                title: "Workbench",
                bodyText: "This space will remain trust-safe and tactile, with rig and augment assembly as the focal interaction."
            )
        case .evaluation:
            PlaceholderScreen(
                title: "Evaluation",
                bodyText: "Evaluation will become the most clinical and exposing surface in the app, especially under Elpis pressure."
            )
        case .profile:
            ProfileScreen(store: store, context: context)
        }
    }
}
