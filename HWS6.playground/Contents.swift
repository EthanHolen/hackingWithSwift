import UIKit

// Closures Pt 1

// functions used like strings and integers = closures
//EX
let driving = {
    print("I am driving")
}

driving()

//EX: w/ parameters
let driving1 = {(place: String) in
    print("I am going to \(place) in my car")
}

driving1("wherever")


//EX: w/ returns
let driving2 = {(place: String) -> String in
    return "I am going to \(place) in my car"
}

print(driving2)


//EX: w/ closures as parameters using driving
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

//Call using driving
travel(action: driving)


//EX: call using trailing closure syntax
travel {
    print("Im driving dude!!")
}



// My own function
let square = { (num: Int) -> Int in
    return num * num
}

print(square(2))

