import Cocoa

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    // this only run if marioOpposite has a value
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional is empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
//print(square(number: number))

// unwrap optional using same name.
// only available in scope
if let number = number {
    print(square(number: number))
} else {
    print("number? is empty")
}

let menuItems: [String]? = ["Pizza", "Pasta"]


// Unwrap optional with guard

// when using guard let the conde inside braces
// will run only if the value does not exist

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing Input")
        return
        
    }
}

func myFunc() {
    
    var myVar: Int? = 3
    
    if let unwrapped = myVar {
        // Run if myVar has a value inside
    }
    
    guard let unwrapped = myVar else {
        // Run if myVar doesn't have a value inside
        return
    }
}
  
// unwrap optionals with nill coalescing

let videoGames = [
    "Xbox" : "Halo",
    "PS" : "God of War",
    "Nintendo" : "Mario Bros",
    "PC" : "Valorant"
]

var game = videoGames["XboxSeriesS"] ?? "Not in dictionary"

// Handle optional using optional chaining

// if the optional has a value inside, unwrap it then ...

struct Book {
    let title: String
    let author: String?
}

var book : Book? = nil
// if anything of the following line fails. return "A"
let author = book?.author?.first?.uppercased() ?? "A"
print(author)


// handle function failure with optionals

enum UserError : Error {
    case badId, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

