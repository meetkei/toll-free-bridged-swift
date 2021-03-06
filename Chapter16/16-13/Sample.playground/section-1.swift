enum DateFormat {
    case Undefined
    case Long(Int, Int, Int, String)
    case Short(Int, Int)
    
    init() {
        self = .Undefined
    }
    
    init(_ year: Int, _ month: Int, _ day: Int, _ dayName: String) {
        self = .Long(year, month, day, dayName)
    }
    
    init(_ month: Int, _ day: Int) {
        self = .Short(month, day)
    }
    
    func toString() -> String {
        switch self {
        case .Undefined:
            return "Undefined"
        case let .Long(year, month, day, dayName):
            return "\(year)-\(month)-\(day) \(dayName)"
        case let .Short(month, day):
            return "\(month)-\(day)"
        }
    }
}