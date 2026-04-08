import SwiftUI

struct SidebarView: View {
    @Binding var selectedDestination: AppDestination
    let context: VisualContext

    var body: some View {
        ZStack {
            sidebarBackground

            List(AppDestination.allCases, selection: $selectedDestination) { destination in
                VStack(alignment: .leading, spacing: 3) {
                    Text(destination.rawValue)
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                    Text(sidebarDescriptor(for: destination))
                        .font(.caption2)
                        .foregroundStyle(context.palette.secondaryText)
                }
                .foregroundStyle(context.palette.primaryText)
                .padding(.vertical, 6)
                .tag(destination)
                .listRowBackground(Color.clear)
            }
            .scrollContentBackground(.hidden)
            .listStyle(.sidebar)
        }
    }

    @ViewBuilder
    private var sidebarBackground: some View {
        if context.destination == .novaDrift {
            LinearGradient(
                colors: [
                    Color(hex: "130A22"),
                    Color(hex: "090512")
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .overlay(
                context.palette.accent.opacity(0.08)
            )
            .ignoresSafeArea()
        } else {
            LinearGradient(
                colors: [
                    context.palette.elevated,
                    context.palette.background.opacity(0.96)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
        }
    }

    private func sidebarDescriptor(for destination: AppDestination) -> String {
        switch destination {
        case .quarters:
            return "private operational shell"
        case .novaDrift:
            return "signal-space and contracts"
        case .dockside:
            return "theme and colony lab"
        case .workbench:
            return "rig assembly and trust-safe prep"
        case .evaluation:
            return "clinical refinement surface"
        case .profile:
            return "system reading of self"
        }
    }
}
