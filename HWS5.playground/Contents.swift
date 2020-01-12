import UIKit


//FUNCTIONS

//Writing a function
func printHelp(){
    
    let message = """
Whats up guys!

This is a message for my app
"""
    
    print(message)
}

//Calling that function
printHelp()


//Parameters in function
func square(number: Int) {
    print("The square of \(number) is " , number * number)
}


square(number: 500)


//Returning a value
func squareRet(number: Int) -> Int {
    return number * number
}

let result = squareRet(number: 8)
print(result)


//Naming in and out of the function
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Ethan")


// Not naming the function;
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Ethan")




// Writing default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet("Ethan")
greet("Ethan", nicely: false)


// Variadic functions (can take in many of the same parameters ex. print func)
print("Haters", "gonna", "hate")


func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1,2,3,4,5)





// Throwing Functions
enum PasswordError: Error{
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("Ethan")
    print("Good Stuff!")
}catch{
    print("Nice try idiot!")
}




//inout Parameters
func doubleInPlace(number: inout Int){
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

print(myNum)

