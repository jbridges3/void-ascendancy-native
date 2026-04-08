struct AppState {
    var selectedDestination: AppDestination
    var selectedContractID: Contract.ID?
    var activeOutcome: ContractOutcome?
    var player: Player
    var selectedColony: Colony
    var contracts: [Contract]
    var notices: [Notice]
    var previewColony: Colony
    var previewDestination: AppDestination
}
