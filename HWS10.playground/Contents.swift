import UIKit

//CLASSES

//Basic class
/*
5 differences between classes and structs
 1.classes never come with a memberwise initializer ( if you have properties in your class, you must always create your own initializer.)
 2. you can create a class based on an existing class – it inherits all the properties and methods of the original class (inheritence)
 3. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other
 4. classes can have deinitializers – code that gets run when an instance of a class is destroyed
 5.  if you have a constant class with a variable property, that property can be changed (no need for mutating)
*/



//1

class dog {
    var name: String
    var breed: String
    
    init(name:String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise(){
        print("Woof!")
    }
    
    func info() {
        print(self.name, self.breed)
    }
}

//calling class dog
let mochi = dog(name: "Mochi", breed: "Shitsu")


mochi.info()





//2

class poodle: dog {
    override init(name: String, breed: String) {
        super.init(name: name, breed: "Poodle")
    }
    // Method overriding
    override func makeNoise() {
        print("Yip!")
    }
}
let poppy = poodle(name: "poppy", breed: "Poodle")

poppy.info()

mochi.makeNoise()
poppy.makeNoise()


//final class
final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}



//3
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)



//4
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}



// 5
class Singer1 {
    
    //Make this constant to stop name being renamed (let instead of var)
    var name = "Taylor Swift"
}

let taylor = Singer1()
taylor.name = "Ed Sheeran"
print(taylor.name)
