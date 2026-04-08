import SwiftUI

enum VisualContextResolver {
    static func resolve(
        destination: AppDestination,
        colony: Colony,
        player: Player
    ) -> VisualContext {
        let resonance = resonanceLevel(player: player, colony: colony)
        let anomalyAllowance: AnomalyAllowance

        switch destination {
        case .quarters:
            anomalyAllowance = resonance == .aligned && colony.convergence.direction == .void ? .restrained : .minimal
        case .novaDrift:
            anomalyAllowance = colony.convergence.direction == .void ? .expressive : .restrained
        case .dockside, .profile:
            anomalyAllowance = .restrained
        case .workbench:
            anomalyAllowance = .minimal
        case .evaluation:
            anomalyAllowance = colony.convergence.direction == .void ? .restrained : .minimal
        }

        return VisualContext(
            destination: destination,
            colonyProfile: colony.profile,
            convergenceDirection: colony.convergence.direction,
            convergenceBand: colony.convergence.band,
            resonance: resonance,
            anomalyAllowance: anomalyAllowance,
            palette: palette(for: destination, colony: colony)
        )
    }

    private static func resonanceLevel(player: Player, colony: Colony) -> ResonanceLevel {
        let delta: Double

        switch colony.convergence.direction {
        case .void:
            delta = player.alignment.void - player.alignment.elpis
        case .elpis:
            delta = player.alignment.elpis - player.alignment.void
        case .contested:
            delta = 0.0
        }

        if delta > 0.2 {
            return .aligned
        }
        if delta > -0.1 {
            return .partial
        }
        return .muted
    }

    private static func palette(for destination: AppDestination, colony: Colony) -> ResolvedPalette {
        let base = basePalette(for: destination)
        let colonyAccent = colonyAccent(for: colony.profile)
        let overlay = overlayAccent(for: colony.convergence.direction)

        return ResolvedPalette(
            background: base.background,
            elevated: base.elevated,
            panel: base.panel,
            primaryText: base.primaryText,
            secondaryText: base.secondaryText,
            accent: blend(base: colonyAccent.primary, overlay: overlay.primary, intensity: colony.convergence.intensity),
            accentSecondary: blend(base: colonyAccent.secondary, overlay: overlay.secondary, intensity: colony.convergence.intensity),
            border: blend(base: colonyAccent.border, overlay: overlay.border, intensity: colony.convergence.intensity)
        )
    }

    private static func blend(base: Color, overlay: Color, intensity: Double) -> Color {
        intensity < 0.4 ? base : overlay.opacity(0.7 + (intensity * 0.3))
    }

    private static func basePalette(for destination: AppDestination) -> ResolvedPalette {
        switch destination {
        case .quarters:
            return ResolvedPalette(
                background: Color(hex: "DCE3EA"),
                elevated: Color(hex: "EEF3F7"),
                panel: Color(hex: "F7FAFC"),
                primaryText: Color(hex: "202A35"),
                secondaryText: Color(hex: "617080"),
                accent: Color(hex: "91A9C2"),
                accentSecondary: Color(hex: "C4D3E0"),
                border: Color(hex: "D3DEE8")
            )
        case .novaDrift:
            return ResolvedPalette(
                background: Color(hex: "080510"),
                elevated: Color(hex: "140A24"),
                panel: Color(hex: "1B1030"),
                primaryText: Color(hex: "F7EEFF"),
                secondaryText: Color(hex: "C9B5E8"),
                accent: Color(hex: "FF4FD8"),
                accentSecondary: Color(hex: "47C7FF"),
                border: Color(hex: "7C4DFF")
            )
        case .dockside:
            return ResolvedPalette(
                background: Color(hex: "10151B"),
                elevated: Color(hex: "1A212A"),
                panel: Color(hex: "202833"),
                primaryText: Color(hex: "E7EDF7"),
                secondaryText: Color(hex: "9CA7B8"),
                accent: Color(hex: "7C8797"),
                accentSecondary: Color(hex: "36404D"),
                border: Color(hex: "2B3545")
            )
        case .workbench:
            return ResolvedPalette(
                background: Color(hex: "0F1319"),
                elevated: Color(hex: "1A2028"),
                panel: Color(hex: "202833"),
                primaryText: Color(hex: "E7EDF7"),
                secondaryText: Color(hex: "9CA7B8"),
                accent: Color(hex: "93A0B0"),
                accentSecondary: Color(hex: "2C3745"),
                border: Color(hex: "2B3545")
            )
        case .evaluation, .profile:
            return ResolvedPalette(
                background: Color(hex: "0E1117"),
                elevated: Color(hex: "171D25"),
                panel: Color(hex: "202733"),
                primaryText: Color(hex: "E7EDF7"),
                secondaryText: Color(hex: "9CA7B8"),
                accent: Color(hex: "98A6B7"),
                accentSecondary: Color(hex: "253040"),
                border: Color(hex: "2B3545")
            )
        }
    }

    private static func colonyAccent(for profile: ColonyProfile) -> (primary: Color, secondary: Color, border: Color) {
        switch profile {
        case .tunderan:
            return (Color(hex: "6D7A86"), Color(hex: "4D5B68"), Color(hex: "343944"))
        case .alteria:
            return (Color(hex: "7DA0B8"), Color(hex: "95B9C9"), Color(hex: "AEB8C4"))
        case .midway:
            return (Color(hex: "B08D63"), Color(hex: "7D95A6"), Color(hex: "727C89"))
        case .nereth:
            return (Color(hex: "7991A8"), Color(hex: "5E7386"), Color(hex: "55606D"))
        case .halcyon:
            return (Color(hex: "9CC5D8"), Color(hex: "BEDBE5"), Color(hex: "C5D1DD"))
        }
    }

    private static func overlayAccent(for direction: ConvergenceDirection) -> (primary: Color, secondary: Color, border: Color) {
        switch direction {
        case .void:
            return (Color(hex: "7B89C4"), Color(hex: "A4688B"), Color(hex: "5F6791"))
        case .elpis:
            return (Color(hex: "B8D7E8"), Color(hex: "8EB3CB"), Color(hex: "A9C1D3"))
        case .contested:
            return (Color(hex: "D8A44E"), Color(hex: "7D95A6"), Color(hex: "8C97A3"))
        }
    }
}
