import SwiftUI

@main
struct VoidAscendancyNativeApp: App {
    @State private var store = AppStore.bootstrap()

    var body: some Scene {
        WindowGroup {
            RootView(store: store)
                .frame(minWidth: 1180, minHeight: 760)
        }
        .windowResizability(.contentMinSize)
    }
}
