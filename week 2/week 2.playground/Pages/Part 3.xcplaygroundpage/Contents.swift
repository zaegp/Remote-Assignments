//: [Previous](@previous)

import Foundation

protocol PoliceMan {
    func arrestCriminals()
}

struct Person: PoliceMan {
    var name: String
    var toolMan: ToolMan
    
    func arrestCriminals(){
    }
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    func fixComputer() {
    }
}

let steven = Person(name: "Steven", toolMan: Engineer())

//: [Next](@next)
