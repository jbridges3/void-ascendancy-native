import SwiftUI

struct MainWorkspaceView: View {
    @Bindable var store: AppStore
    let context: VisualContext

    var body: some View {
        ZStack {
            context.palette.background
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
