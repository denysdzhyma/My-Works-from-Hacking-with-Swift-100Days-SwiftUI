import Foundation

protocol Building {
    var buildingType: String { get set }
    var rooms: Int { get set }
    var cost: Int { get set }
    var estateAgent: String { get set }
    func summary() -> String
}

extension Building {
    func summary() -> String {
        return "Summary of Sale:\n\nBuilding: \(buildingType)\nRooms: \(rooms)\nPrice: $\(cost)USD.\nSold (estate agent) by: \(estateAgent)"
    }
}

struct House: Building {
    var buildingType: String = "House"
    var rooms: Int = 5
    var cost: Int = 450_000
    var estateAgent: String = "New York City Estate Agent"
}

struct Office: Building {
    var buildingType: String = "Office"
    var rooms: Int = 60
    var cost: Int = 2_000_000
    var estateAgent: String = "San Jose Business Agent"
}
