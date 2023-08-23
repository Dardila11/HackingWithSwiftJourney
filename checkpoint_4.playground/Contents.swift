import Cocoa

var greeting = "Hello, playground"

enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func squareRoot(of number: Int) throws -> Int {
    var root: Int = 0
    if number < 1 || number > 10_000 {throw SquareRootError.outOfBounds}
    
    
    for i in 1...number {
        if i * i == number {
            root = i
        }
    }
    
    if root == 0 {
        throw SquareRootError.noRoot
    } else {
        return root
    }
}

let number = 100
do {
    let result = try squareRoot(of: number)
    print(result)
} catch SquareRootError.outOfBounds {
    print("Number must be between 1 and 10,000")
} catch SquareRootError.noRoot {
    print("There is no integer square root for \(number)")
} catch {
    print("Unexpected error")
}



