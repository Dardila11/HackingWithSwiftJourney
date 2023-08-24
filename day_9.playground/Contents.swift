import Cocoa

// MARK: Closures

// copying a function

func greetUser() {
    print("Hi there")
}

greetUser()

var greetUserCopy = greetUser
greetUserCopy()

// MARK: Closure hidden in a constant
let sayHello = { (name: String) in
    print("Hello there! \(name)")

}

sayHello("Daniel")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// now we sort it using closures

let capitanFirstSortedClosure = { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam2 = team.sorted(by: capitanFirstSortedClosure)

//let captainFirstTeam2 = team.sorted(by:  { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//})

// MARK: Closures can not have external parameters name
//var cutGrass = { (length currentLength: Double) in
//    switch currentLength {
//    case 0...1:
//        print("That's too short")
//    case 1...3:
//        print("It's already the right length")
//    default:
//        print("That's perfect.")
//    }
//}

/* MARK: we don't always need to specify the parameters type or the return type
    when a function accepts another function as its parameter.
    we can use 'trailing closure' syntax
*/
 let captainFirstTeam3 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

// MARK: We can even use $0 or $1 to refer parameters
let captainFirstTeam4 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}


/*
 
 it is a function. take a desirable size for the array.
 and also a function which generated each number for the array.
 the function call generator takes no parameters and return an Integer.
 makeArray function returns an array of Integers.
 
 */
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

// makeArray(size: <#T##Int#>, using: <#T##() -> Int#>)

// using closures
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

// using regular functions
// we can define a generator function to use
// with same structure
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void){
    print("about to start first work")
    first()
    print("about to start second work")
    second()
    print("about to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This is first work")
} second: {
    print("This is second work")
} third: {
    print("This is third work")
}
