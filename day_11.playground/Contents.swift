import Cocoa

/// limit access to internal data
///
///  private: Do not let anything outside the struct use this
///  fileprivate: Do not let anythinh outside the file use this
///  public: let anyone, anywhere use this
///
///  if using private properties. struct memberwise init won't work

struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdrawl(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdrawl(amount: 200)

if success {
    print("Withdrawl was successful")
} else {
    print("Failed to get the money")
}

/// this should not be availabe to access with "private" keyword
// account.funds -= 1000

struct Employee {
    var name: String
    private var accessCode: String
    
    init(name: String, accessCode: String) {
        self.name = name
        self.accessCode = accessCode
    }
    
    init(name: String){
        self.name = name
        self.accessCode = "53424354"
    }
}

var newEmployee = Employee(name: "Daniel", accessCode: "12345")
var newEmployee1 = Employee(name: "Enrique")

/// static properties and methods

/// /// self: the current value of a struct
/// Self: the current type of struct

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Daniel")
print(School.studentCount)

struct AppData {
    static var version = "1.2.4"
    static let saveFilename = "settings.json"
    static let homeUrl = "dardila.dev"
    
    // use static when storing example data
}

struct User {
    let username: String
    let password: String
    
    static let example = User(username: "dardila", password: "1234567")
}

struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    
    init(headling: String, isBreaking: Bool) {
        self.headline = headling
        if isBreaking {
            NewsStory.breakingNewsCount += 1
            print("Breaking news this week: \(Self.breakingNewsCount)")
        } else {
            Self.regularNewsCount += 1
            print("Regular news this week: \(NewsStory.breakingNewsCount)")
        }
    }
}

var news1 = NewsStory(headling: "Aliens Invasion", isBreaking: true)
var news = NewsStory(headling: "Trump Corruption", isBreaking: false)


