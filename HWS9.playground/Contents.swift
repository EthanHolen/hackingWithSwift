import UIKit

//STRUCTS PT.2

//EX Initializers
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"
print(user.username)

var user2 = User()

print(user2.username)



//Referring to the current instance (self)
struct person {
    var name: String
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}

var ethan = person(name: "Ethan")



//Lazy Properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct person1 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}


var ed = person1(name: "Ed")

//Only created when they are called
ed.familyTree



//Static Properties and methods
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let eddie = Student(name: "Ed")
let taylor = Student(name: "Taylor")

print(Student.classSize)



//Access Control

struct Person3 {
    private var id: String
    var name: String

    init(id: String, name: String) {
        self.id = id
        self.name = name
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let eho = Person3(id: "1234", name: "Ethan")
//Cannot simply access w/ private
//print(eho.id)
print(eho.name)

// must access w/ func within the struct
print(eho.identify())

/*
 1. You can create your own types using structures, which can have their own properties and methods.
 2. You can use stored properties or use computed properties to calculate values on the fly.
 3. If you want to change a property inside a method, you must mark it as mutating.
 4. Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
 5. Use the self constant to refer to the current instance of a struct inside a method.
 6. The lazy keyword tells Swift to create properties only when they are first used.
 7. You can share properties and methods across all instances of a struct using the static keyword.
 8. Access control lets you restrict what code can use properties and methods.
 */
