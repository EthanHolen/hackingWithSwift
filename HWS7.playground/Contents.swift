import UIKit


//Closures Pt 2

//EX: using closures as parameters when they accept parameters
func traveling(action: (String) -> Void){
    print("Im getting ready to go")
    action("london")
    print("I arrived")
}

traveling{(place: String) in
    print("I am going to \(place) in my car")
}


//EX: using closures as parameters when they return values
func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}





//EX shorthand parameter names

// Starting func
func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// full length call
travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
//Shorthand
travel3 { place in
    "Im going to \(place) in my car"
}
// Even shorter hand
travel3 {
    "I'm going to \($0) in my car"
}




//EX closures w/ multiple parameters

func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel4 {
    "Im going to \($0) at \($1) miles per hour"
}






//EX Returning closures from functions
func hello() -> (String) -> Void {
    return{
        print("Hello from \($0)")
    }
}

let result = hello()
result("Canada")


func helloCount() -> (String) -> Void {
    var counter = 1
    counter = 1
    return{
        print("\(counter). Hello from \($0)")
        counter += 1
    }
}

let res = helloCount()
res("America")
res("Wherever")
res("computer")



// Closures Summary
//1. You can assign closures to variables, then call them later on.
//2. Closures can accept parameters and return values, like regular functions.
//3. You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//4. If the last parameter to your function is a closure, you can use trailing closure syntax.
//5. Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
//6. If you use external values inside your closures, they will be captured so the closure can refer to them later.
