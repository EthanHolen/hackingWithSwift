import UIKit

//Variable (can be changed)
var name = "Tim"
//constant (cant be changed)
let nomen = "Steve"

var gandalf: String
gandalf = "Gandalf"

var age: Int
age = 3824

//Double
var latitude: Double
latitude = 36.166667

//Float
var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333



//Boolean
var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false


//Type inference is preferred in swift.
var name1 = "Ethan"




//Operators

var a = 10
a = a + 1
a = a - 1
a = a * a


var b = 10
b += 10
b -= 10


var a1 = 1.1
var b1 = 2.2
var c = a + b

var name11 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2








//String Interpolation
var name4 = "Tim McGraw"
var age4 = 25
var latitude4 = 36.166667

"Your name is \(name4), your age is \(age4), and your latitude is \(latitude4)"


//Arrays
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]


//Dictionaries
var person2 = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
person2["middle"]
person2["month"]









//Conditionals
var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}








//Loops
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}


var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ... 3 {
    print("\(people[i]) gonna \(actions[i])")
}





//Switch
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}
