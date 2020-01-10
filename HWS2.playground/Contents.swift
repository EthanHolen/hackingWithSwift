import UIKit

//Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

print(beatles[2])





//Sets
// order not guaranteed
let colors = Set(["red", "green", "blue"])
print(colors)


// will not register repeated values
let colors2 = Set(["red", "green", "blue", "blue"])
print(colors2)





//Tuples
// cannot add or remove items
// cannot change their types after creation
var name = (first: "Ethan", last: "Holen")
print(name.0)
print(name.first)
print(name.last)

name.first = "Luke"
print(name.first)





//Dictionaries
// Like arrays but you can store using anything you want instead of an int position
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]


// nil values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]

favoriteIceCream["Charlotte", default: "Unknown"]

//Empty Collections

// Dictionary
var teams = [String: String]()

//Array
var results = [Int]()

//Sets
var words = Set<String>()







//Enumerations
// problem with different naming
let result = "failure"
let result1 = "failed"
let result2 = "fail"

//solution to this problem with enum

enum Result{
    case success
    case failure
}
let result3 = Result.failure


print(result3)


// Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")

print(talking)



//Raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 3)
