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
