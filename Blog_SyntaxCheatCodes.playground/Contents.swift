//: Playground - noun: a place where people can play

import UIKit


// MARK: - Closure

UIView.animateWithDuration(3, animations: {
    // This is a closure in an argument
})

// MARK: - Trailing Closure

UIView.animateWithDuration(3) { 
    // This is a trailing closure
    // It's the same API call as the one above
}


// MARK: More closure stuff

let closure: () -> Void

func doSomething(something: () -> Void) {
    something()
}

//let usedClosure = closure()
//doSomething(usedClosure)


// MARK: - Type Alias

typealias TripleThreat = (Int, String, Double) -> (Int, String, Double)

// Without typealias

func _dance(dance: (Int, String, Double) -> (Int, String, Double)) { }
func _sing(sing: (Int, String, Double) -> (Int, String, Double)) { }
func _act(act: (Int, String, Double) -> (Int, String, Double)) { }

// With typealias

func dance(dance: TripleThreat) { }

func act(act: TripleThreat) { }

func sing(sing: TripleThreat) { }


// MARK: - Shorthand Argument Names

func say(message: String, completion: (goodbye: String) -> Void) {
    print(message)
    completion(goodbye: "Goodbye")
}
    
say("Hi") { (goodbye: String) -> Void in
        print(goodbye)
}

// prints: "Hi"
// prints: "Goodbye"

say("Hi") { print($0) }

// prints: "Hi"
// prints: "Goodbye"
