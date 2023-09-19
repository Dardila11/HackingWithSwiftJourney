import Cocoa

/// create a struct to store information about a car
struct Car {
    static let model: String = "Brand new"
    static let numberOfSeats : Int = 6
    private var currentGear: Int {
        didSet{
            if currentGear <= 0 || currentGear >= 11 {
                print("Invalid gear")
            }
        }
    }
    
    init(){
        self.currentGear = 1
    }
    
    mutating func gearUp() {
        if self.currentGear < 11 {
            self.currentGear += 1
            print("current gear is \(self.currentGear)")
        }
    }
    
    mutating func gearDown(){
        if self.currentGear > 0 {
            self.currentGear -= 1
            print("current gear is \(self.currentGear)")
        }
    }
    
}

var newCar = Car()
newCar.gearUp()
newCar.gearDown()
newCar.gearDown()
newCar.gearDown()

