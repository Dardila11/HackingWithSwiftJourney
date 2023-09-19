import Cocoa

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car : Vehicle {
    let name = "Car"
    
    var currentPassengers = 1
    
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
}

struct Bicycle : Vehicle {
    let name = "Bicycle"
    
    var currentPassengers = 1
    
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)


let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)


// Opaque return types
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var name = "     Daniel    "

print(name)
print(name.trimmed())


// Create Protocol Extensions

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guests count \(guests.count)")
}

protocol Person {
    var name : String { get }
    func sayHello()
}

extension Person {
    func sayHello(){
        print("Hi, I'm \(name)")
    }
}

struct Employee : Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()



