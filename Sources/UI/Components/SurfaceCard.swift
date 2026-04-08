import SwiftUI

struct SurfaceCard<Content: View>: View {
    let title: String
    let context: VisualContext
    @ViewBuilder let content: Content

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title.uppercased())
                .font(.caption.weight(.semibold))
                .tracking(1.2)
                .foregroundStyle(context.palette.accent)

            content
        }
        .padding(18)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(cardBackground)
        .overlay {
            cardShape
                .stroke(context.palette.border.opacity(context.destination == .novaDrift ? 0.95 : 0.75), lineWidth: 1)
        }
        .shadow(color: context.palette.accent.opacity(0.08), radius: 18, x: 0, y: 8)
        .clipShape(cardShape)
    }

    @ViewBuilder
    private var cardBackground: some View {
        if context.destination == .novaDrift {
            LinearGradient(
                colors: [
                    context.palette.panel.opacity(0.98),
                    context.palette.elevated.opacity(0.92)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .overlay(
                LinearGradient(
                    colors: [
                        context.palette.accent.opacity(0.10),
                        .clear,
                        context.palette.accentSecondary.opacity(0.08)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
        } else {
            LinearGradient(
                colors: [
                    context.palette.panel.opacity(0.96),
                    context.palette.elevated.opacity(0.88)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
    }

    private var cardShape: RoundedRectangle {
        RoundedRectangle(cornerRadius: context.destination == .quarters ? 28 : 18, style: .continuous)
    }
}
