enum SeedData {
    static func initialState() -> AppState {
        let tunderan = Colony(
            id: "tunderan",
            name: "Tunderan",
            profile: .tunderan,
            convergence: ConvergenceState(direction: .void, intensity: 0.84)
        )

        let halcyon = Colony(
            id: "halcyon",
            name: "Halcyon",
            profile: .halcyon,
            convergence: ConvergenceState(direction: .elpis, intensity: 0.76)
        )

        return AppState(
            selectedDestination: .quarters,
            selectedContractID: "contract_001",
            activeOutcome: nil,
            player: Player(
                name: "J. Vale",
                cycle: 19,
                credits: 5400,
                progress: 7,
                loadoutSummary: "Field Rig Mk.1 + Stealth Patch Mk.1",
                alignment: AlignmentState(void: 0.58, elpis: 0.29)
            ),
            selectedColony: tunderan,
            contracts: [
                Contract(
                    id: "contract_001",
                    title: "Pressure Archive Extraction",
                    colony: tunderan,
                    rewardCredits: 1200,
                    rewardProgress: 3,
                    apparentRisk: .uncertain,
                    narrativeHook: "Something old is still writing to the archive wall, and the official mirror is no longer consistent."
                ),
                Contract(
                    id: "contract_002",
                    title: "Halcyon Civic Intercept",
                    colony: halcyon,
                    rewardCredits: 900,
                    rewardProgress: 2,
                    apparentRisk: .favorable,
                    narrativeHook: "The route is clean, the language is clean, and that should concern you more than it does."
                ),
                Contract(
                    id: "contract_003",
                    title: "Midway Transit Shadow",
                    colony: Colony(
                        id: "midway",
                        name: "Midway",
                        profile: .midway,
                        convergence: ConvergenceState(direction: .contested, intensity: 0.55)
                    ),
                    rewardCredits: 1050,
                    rewardProgress: 2,
                    apparentRisk: .hazardous,
                    narrativeHook: "One side says the route exists. The other says it always did. Neither explanation survives inspection."
                )
            ],
            notices: [
                Notice(
                    kind: .colony,
                    title: "Tunderan signal pressure",
                    body: "Peripheral systems no longer agree about where authority terminates."
                ),
                Notice(
                    kind: .system,
                    title: "Quarters integrity nominal",
                    body: "Interior systems remain stable, though external overlays continue to drift."
                )
            ]
        )
    }
}
