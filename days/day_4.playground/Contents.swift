import Cocoa

var greeting : String = "Hello, playground"

var albums: [String] = ["Red", "Fearless"]

var user : [String: String] = ["id": "@dardila"]

var books : Set<String> = Set(["Foundation", "GOT"])

/// empty array
var teams : [String] = [String]()
var cities : [String] = []
var clues = [String]()

enum myStyle {
    case light, dark, system
}

var estilo: myStyle = myStyle.dark
estilo = .system
