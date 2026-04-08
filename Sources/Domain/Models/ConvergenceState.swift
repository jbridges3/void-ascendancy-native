struct ConvergenceState: Equatable {
    let direction: ConvergenceDirection
    let intensity: Double

    var band: ConvergenceBand {
        switch intensity {
        case ..<0.16: .trace
        case ..<0.36: .low
        case ..<0.61: .active
        case ..<0.86: .dominant
        default: .totalizing
        }
    }
}
