import Cocoa

protocol Building {
    var rooms : Int { get }
    var cost: Int { get set }
    var agent : String { get }
    
    func salesSummary()
    
}

extension Building {
    func salesSummary() {
        print("Building Summary")
        print("rooms : \(rooms)")
        print("cost : \(cost)")
        print("agent  : \(agent)")
    }
}

struct House : Building {
    var rooms: Int
    
    var cost: Int
    
    var agent: String
    
    
}

var myHouse = House(rooms: 4, cost: 14000, agent: "Daniel Ardila")
myHouse.salesSummary()

struct Office : Building {
    var rooms: Int
    
    var cost: Int
    
    var agent: String
    
}

var myOffice = Office(rooms: 20, cost: 200_000, agent: "Grace Corp")
myOffice.salesSummary()
