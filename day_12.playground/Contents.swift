import Cocoa

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) a day")
    }
}

class Developer : Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    
    override func printSummary() {
        print("I'm a developer who work \(hours) a day, but other time dont do shit")
    }
}

/// this class does not support inheritance from it
final class Manager : Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

let novall = Developer(hours: 8)
novall.printSummary()


///

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

/// MARK How to copy classes

class User {
    var username = "Anonymous"
    
    /// Create a new reference of User
    /// - Returns: new User
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()

user2.username = "Taylor"
print(user1.username)
print(user2.username)

// MARK: Create a deinitializer for a class
// MARK: Never take parameters or return data
// MARK: Struct don't have deinitializers

class Student {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Student \(id): I'm alive!")
    }
    
    deinit {
        print("Student \(id): I'm dead. :(")
    }
}

/// MARK:  won't deinittialize untill all students references are destroyed
/// MARK: even though student variable is reassined after every iteration. student
/// is still stored in the array
var students = [Student]()

for i in 1...3 {
    let student = Student(id: i)
    print("Student \(student.id): I'm in control!")
    students.append(student)
}

print("Loop is finished")
students.removeAll()
print("Array is clear!")




