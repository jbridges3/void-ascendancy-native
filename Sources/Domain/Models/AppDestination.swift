enum AppDestination: String, CaseIterable, Identifiable {
    case quarters = "Quarters"
    case novaDrift = "Nova Drift"
    case dockside = "Dockside"
    case workbench = "Workbench"
    case evaluation = "Evaluation"
    case profile = "Profile"

    var id: String { rawValue }
}
