enum ColonyProfile: String {
    case tunderan
    case alteria
    case midway
    case nereth
    case halcyon

    var displayName: String { rawValue.capitalized }
}
