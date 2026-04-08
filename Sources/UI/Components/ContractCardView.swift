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
        .background(context.palette.panel.opacity(isSelected ? 1.0 : 0.88))
        .overlay {
            RoundedRectangle(cornerRadius: 18)
                .stroke(isSelected ? context.palette.accent : context.palette.border.opacity(0.65), lineWidth: 1)
        }
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}
