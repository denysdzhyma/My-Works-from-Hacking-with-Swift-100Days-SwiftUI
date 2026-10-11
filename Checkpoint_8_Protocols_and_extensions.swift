import Foundation

protocol Building {
    var rooms: Int { get set }
    var cost: Int { get set }
    var estateAgent: String { get set }
    func summary() -> String
}

struct House: Building {
    var rooms: Int = 5
    var cost: Int = 450_000
    var estateAgent: String = "New York City Estate Agent"
    func summary() -> String {
        return "Summary: House contains \(rooms) bedroom(s) for $\(cost) plus applicable taxes.\n Estate agent by \(estateAgent)"
    }
}

struct Office: Building {
    var rooms: Int = 60
    var cost: Int = 2_000_000
    var estateAgent: String = "San Jose Business Agent"
    func summary() -> String {
        return "Summary: Office building contains \(rooms) office room(s) for $\(cost) plus applicable taxes.\n Estate agent by \(estateAgent)"
    }
}


