import Cocoa

var greeting = "Hello, playground"

struct Employee {
    let name: String
    var remainingVacationDays = 20
    
    mutating func goToVacation(){
        print("I'm going to vacation!!")
        /// this variable can only change because it was declared as a 'var'
        remainingVacationDays -= 7
        print("I have \(remainingVacationDays) vacation days left")
    }
}

var employee1 = Employee(name: "Daniel", remainingVacationDays: 20)
/// goToVacation can only be called if 'employee1' is mark as a 'var' and not a constant 'let'
employee1.goToVacation()

/// Compute proterty values dynamically
struct Employee1 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    /// calculated dynamically
    /// It is computed. not stored
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    
    
}

var archer = Employee1(name: "Sterling Archer", vacationAllocated: 14)


archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)

/// properties observer
struct App {
    var contacts = [String](){
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Sebastian O")
app.contacts.append("Grace S")
app.contacts.append("Daniel A")

struct FootballMatch {
    var homeTeamScore: Int {
        didSet{
            print("Yay - we scored!")
        }
    }
    var awayTeamScore: Int {
        didSet {
            print("Boo - they scored!")
        }
    }
}

var fm = FootballMatch(homeTeamScore: 5, awayTeamScore: 4)
fm.awayTeamScore += 5


/// create custom initializers
struct Player {
    let name: String
    let number: Int
    
    /// make sure all properties have a value
    /// Swift default init is not available anymore
    init(name: String){
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan")
print(player.number)

