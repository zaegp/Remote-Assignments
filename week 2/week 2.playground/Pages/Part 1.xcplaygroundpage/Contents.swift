import UIKit

// 1.
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    
    init(gender: Gender) {
        self.gender = .undefined
    }
    
    func eat() {
        print("I eat everything!")
    }
}

// 2.
class Elephant: Animal {
    override func eat() {
        print("I eat grasses, fruit, and roots!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass and hay!")
    }
}

// 3.
class Zoo: Animal{
    
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
        super.init(gender: .undefined)
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: .undefined))
let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .undefined)

zoo.weeklyHot = elephant
zoo.weeklyHot = horse

/* 
 4.
 (1) Instance is a specific object created from a class, structure, or enumeration.
 (2) Initializer is called to create a new instance of a particular type. And an initializer is used to initialize an instance of a class, struct, or enum.

 5. 
 There are some differences between Struct and Class:
 (1) Struct is value type(copy data) and Class is reference type(share data).
 (2) An instance of a structure is a value and Class instance is object.
 And Class have additional capabilities that Struct don’t have:
 (1) Inheritance enables one class to inherit the characteristics of another.
 (2) Reference counting allows more than one reference to a class instance.
 
 6.
 The difference between reference type and value type: data storage.
 Reference type share data and value type copy data.
 
 7. There are some differences between instance method and type method:
 (1) Write static or class keyword indicate type methods type method.
 (2) Type method is called on the type, not on an instance of that type.
 
 8.
 In an instance method, self is exactly equivalent to the instance itself.
 In a type method, self refers to the type itself, rather than an instance of that
 type.
*/

//: [Next](@next)
