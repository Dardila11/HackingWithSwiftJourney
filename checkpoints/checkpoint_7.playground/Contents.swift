import Cocoa

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog : Animal {
    func speak(){
        print("This dog is barking!!")
    }
}

class Corgi : Dog {
    override func speak(){
        print("Corgi is barking!")
    }
}

class Poodle : Dog {
    
    override func speak(){
        print("Poodle is barking")
    }
}

class Cat : Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak(){
        print("This cat is meowing!")
    }
}

class Persian : Cat {
    
    override func speak() {
        print("Persian cat is meowing!")
    }
    
    
}

class Lion : Cat {
    override func speak() {
        print("Lion is Rawring!")
    }
}

var king = Lion(isTame: false, legs: 4)
king.speak()

var lexi = Cat(isTame: true, legs: 4)
lexi.speak()

