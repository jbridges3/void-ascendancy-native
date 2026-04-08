import SwiftUI

struct ContractCardView: View {
    let contract: Contract
    let isSelected: Bool
    let context: VisualContext

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(contract.title)
                    .font(.headline)
                    .foregroundStyle(context.palette.primaryText)

                Spacer()

                Text(contract.apparentRisk.rawValue.capitalized)
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(context.palette.accent)
            }

            Text(contract.colony.name)
                .font(.subheadline.weight(.medium))
                .foregroundStyle(context.palette.accentSecondary)

            Text(contract.narrativeHook)
                .font(.subheadline)
                .foregroundStyle(context.palette.secondaryText)

            HStack {
                Text("CR \(contract.rewardCredits)")
                Text("PR \(contract.rewardProgress)")
            }
            .font(.caption)
            .foregroundStyle(context.palette.secondaryText)
        }
        .padding(18)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(cardBackground)
        .overlay {
            RoundedRectangle(cornerRadius: 18)
                .stroke(isSelected ? context.palette.accent : context.palette.border.opacity(0.65), lineWidth: 1)
        }
        .shadow(color: isSelected ? context.palette.accent.opacity(0.12) : .clear, radius: 14, x: 0, y: 6)
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }

    @ViewBuilder
    private var cardBackground: some View {
        if context.destination == .novaDrift {
            LinearGradient(
                colors: [
                    (isSelected ? Color(hex: "24103B") : context.palette.panel).opacity(0.98),
                    Color(hex: "130B24").opacity(0.92)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .overlay(
                LinearGradient(
                    colors: [
                        context.palette.accent.opacity(isSelected ? 0.18 : 0.08),
                        .clear,
                        context.palette.accentSecondary.opacity(isSelected ? 0.16 : 0.06)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
        } else {
            LinearGradient(
                colors: [
                    (isSelected ? context.palette.elevated : context.palette.panel).opacity(0.98),
                    context.palette.panel.opacity(0.84)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
    }
}
