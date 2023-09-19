import Cocoa

var videoConsoles = ["Xbox Series", "PlayStation 5", "Switch OLED", "Steam Deck"]

for videoConsole in videoConsoles {
    print("The best video console is \(videoConsole)")
}

for i in 1...5 {
    print(i)
}

for i in 1..<5 {
    print(i)
}

for beatle in ["John", "Paul", "Ringo"] {
    print("\(beatle) was in the beatles")
}

for i in 1...8 {
    if i < 3 {
        print("\(i)")
    }
}

/// while loop
var countdown = 10
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")

var counter = 2
while counter < 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
}


var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var number: Int = 10
while number > 0 {
    number -= 2
    if number % 2 == 0 {
        print("\(number) is an even number.")
    }
}
