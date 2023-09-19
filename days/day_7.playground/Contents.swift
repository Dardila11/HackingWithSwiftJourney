import Cocoa

func getUserName(firstname: String, lastname: String) -> String {
    let username = firstname.capitalized + lastname.capitalized
    return username
}

print(getUserName(firstname: "daniel", lastname: "ardila"))


func getUserName1(firstname: String, lastname: String) -> String {
    return firstname.capitalized + lastname.capitalized
}

print(getUserName1(firstname: "daniel", lastname: "ardila"))

// MARK: we can remove 'return' if there is only a single line
func getUserName2(firstname: String, lastname: String) -> String {
    firstname.capitalized + lastname.capitalized
}

print(getUserName2(firstname: "enrique", lastname: "gutierrez"))


// MARK: Returning multiple values using a tuple

func getUser() -> (firstname: String, lastname: String) {
    ("Manuel", "Ardila")
}

let user = getUser()
print(user.firstname + user.lastname)

// MARK: Deestructuring the tuple, we may use same or diferent variables names.

let (first, last) = getUser()
print(first + last)


