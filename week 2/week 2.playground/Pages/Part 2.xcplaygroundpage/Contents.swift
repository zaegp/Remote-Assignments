//: [Previous](@previous)

import Foundation

// 1.
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
    var price: Int {
        switch self {
        case .oil92:
            return 29
        case .oil95:
            return 30
        case .oil98:
            return 32
        }
    }
    
    func getPrice() -> Int {
        switch self {
        case .oil92:
            return 29
        case .oil95:
            return 30
        case .oil98:
            return 32
        }
    }
}

/* 
 Enum associated value store values of other types alongside the case values
 It can be used like this:
 enum Barcode {
     case upc(Int, Int, Int, Int)
     case qrCode(String)
 }
 (引用自<The Swift Programming Language>)
*/

// 2.
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
    
    init(pet: Pet? = nil) {
        self.pet = pet
    }
}

let rowan = People(pet: Pet(name: "mango"))

func printName(_ people: People) {
    guard let pet = people.pet else {
        return
    }
    
    print("Pet's name is \(pet.name)")
}

let steven = People(pet: Pet(name: "lucy"))

func printName2(_ people: People) {
    if let pet = people.pet {
        print("Pet's name is \(pet.name)")
    }
}

//: [Next](@next)
