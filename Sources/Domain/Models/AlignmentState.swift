struct AlignmentState {
    var void: Double
    var elpis: Double

    static func adjusted(
        from alignment: AlignmentState,
        toward direction: ConvergenceDirection,
        intensity: Double
    ) -> AlignmentState {
        let delta = intensity * 0.04

        switch direction {
        case .void:
            return AlignmentState(
                void: min(1.0, alignment.void + delta),
                elpis: max(0.0, alignment.elpis - delta * 0.5)
            )
        case .elpis:
            return AlignmentState(
                void: max(0.0, alignment.void - delta * 0.5),
                elpis: min(1.0, alignment.elpis + delta)
            )
        case .contested:
            return alignment
        }
    }

    var dominantDirection: ConvergenceDirection {
        if abs(void - elpis) < 0.08 {
            return .contested
        }
        return void > elpis ? .void : .elpis
    }
}
