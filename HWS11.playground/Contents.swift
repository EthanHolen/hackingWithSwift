import UIKit

//PROTOCOLS
//Basic protocol
protocol Identifiable1 {
    var id:String {get set}
}

struct user: Identifiable1{
    var id: String
}

func displayID(thing: Identifiable1){
    print("My ID is \(thing.id)")
}

let tim = user(id: "blah")


displayID(thing: tim)



//Protocol inheritance
//individual protocols

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

//Combined protocols into single employee
protocol Employee: Payable, NeedsTraining, HasVacation { }




//Extentions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let num = 8
num.squared()


//Protocol extensions
//Same as normal extensions except with the protocols so that multiple types are effected
//Ex. array and set

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])


extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()



//Protocol oriented programming
protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostrawsID")
twostraws.identify()
