enum AppIntent {
    case selectDestination(AppDestination)
    case selectContract(Contract.ID)
    case executeSelectedContract
    case dismissOutcome
    case advanceCycle
    case selectPreviewColony(String)
    case selectPreviewDestination(AppDestination)
}
