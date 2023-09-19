import Cocoa

/*
 Your job is to:

 Filter out any numbers that are even
 Sort the array in ascending order
 Map them to strings in the format “7 is a lucky number”
 Print the resulting array, one item per line
 
 */

let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]

//func showLuckyNumbers(from luckyNumbersArray : [Int], filterOut: () -> [Int], sortItOut: () -> Void, mapItOut: () -> [String] ) {
//
//
//    var filteredArray = filterOut()
//}


let showLuckyNumbers = luckyNumbers.filter {
    !$0.isMultiple(of: 2)
}.sorted().map{ num in
    return "\(num) is a lucky number"
}

print(showLuckyNumbers)
