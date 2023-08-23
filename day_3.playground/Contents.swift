import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4,7,2,3,5]

// append
beatles.append("Adrian")

// declares an array
// which holds only Integers
var scores = Array<Int>()
var albums = [String]()

//
print(beatles.count)

var characters = ["Lana", "Pam", "Ray"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)

///
/// Dictionaries
///
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]


// default values
print(employee["job", default: "Unknown"])

// declare a dictionary
var heights = [String:Int]()

heights["Yao ming"] = 229
heights["Shaquille"] = 216
heights["Lebron James"] = 206


let planets = [1 : "Mercury", 2: "Venus"]

// the following line is used in dictionaries.
// NOT on arrays
let venus = planets[3, default: "Planet X"]


///
/// Sets
///
// will remove duplicated values
// won't remember the order of items

var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")
print(actors)


///
/// Enums
///
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    /// case monday, tuesday, wednesday
}

var day = Weekday.monday
day = Weekday.saturday
day = .sunday
