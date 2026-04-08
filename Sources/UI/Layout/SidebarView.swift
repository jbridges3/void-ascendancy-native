import SwiftUI

struct SidebarView: View {
    @Binding var selectedDestination: AppDestination

    var body: some View {
        List(AppDestination.allCases, selection: $selectedDestination) { destination in
            Text(destination.rawValue)
                .tag(destination)
        }
        .listStyle(.sidebar)
    }
}
