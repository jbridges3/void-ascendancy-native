struct Notice: Identifiable {
    enum Kind {
        case system
        case contract
        case colony
    }

    let id = UUID()
    let kind: Kind
    let title: String
    let body: String
}
