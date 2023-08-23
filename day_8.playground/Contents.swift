import Cocoa

var greeting = "Hello, playground"

// MARK: Default values for parameters

func printTimesTables(for number: Int, end: Int = 10){
    for i in 1...end {
        print("\(number) X \(i) is \(i * number)")
    }
}

print(printTimesTables(for: 5))
print(printTimesTables(for: 7, end: 15))

// MARK: handle error in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {throw PasswordError.short}
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8 { return "OK"}
    else if password.count < 10 {return "Good"}
    else { return "Excellent"}
    
}

let pass = "12345"

do {
    let result = try checkPassword(pass)
    print("password rating \(result)")
} catch PasswordError.short {
    print("too short")
} catch PasswordError.obvious {
    print("too easy to figure")
} catch {
    "Unexpected error"l
}

