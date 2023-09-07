import Cocoa

func RandomInteger(of  myArray : [Int]? ) -> Int {
    return myArray?.randomElement() ?? Int.random(in: 1...100)
    
}

//print(RandomInteger(of: [22,4,6,42,2]))
 print(RandomInteger(of: []))
