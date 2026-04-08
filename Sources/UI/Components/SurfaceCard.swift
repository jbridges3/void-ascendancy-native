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
        .background(context.palette.panel.opacity(0.92))
        .overlay {
            RoundedRectangle(cornerRadius: 18)
                .stroke(context.palette.border.opacity(0.75), lineWidth: 1)
        }
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}
