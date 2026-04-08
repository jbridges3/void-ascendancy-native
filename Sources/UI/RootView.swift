import SwiftUI

struct RootView: View {
    @Bindable var store: AppStore

    var body: some View {
        let context = store.visualContext

        NavigationSplitView {
            SidebarView(selectedDestination: $store.state.selectedDestination)
        } detail: {
            HStack(spacing: 0) {
                MainWorkspaceView(store: store, context: context)
                ContextPanelView(store: store, context: context)
                    .frame(width: 320)
            }
            .background(context.palette.background)
            .overlay(alignment: .top) {
                HeaderBandView(store: store, context: context)
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}
