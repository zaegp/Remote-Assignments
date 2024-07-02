import UIKit
/* 1.
 (1) Closures are self-contained blocks of functionality that can be passed around and used. Closures can capture and store references to any constants and variables from the context in which they’re defined.
 (2) Closure expression syntax has the following general form:
 { (<#parameters#>) -> <#return type#> in
 <#statements#>
 }
 And if we need to pass a closure expression to a function as the function’s final argument and the closure
 expression is long, it can be useful to write it as a trailing closure instead.
 func someFunctionThatTakesAClosure(closure: () -> Void) {
     // function body goes here
 }
*/

// 2.
var isOdd = {(input: Int) -> Bool in
    return input % 2 != 0
}

// 3.
var layers: Int
func printTriangle(layers: Int) {
    for i in 1...layers {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print("\n")
    }
}
