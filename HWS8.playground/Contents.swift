import UIKit

// STRUCTS

//EX basic sport struct
struct Sport0 {
    var name: String
}

var tennis = Sport0(name: "Tennis")

print(tennis.name)


//EX Computed properties
struct Sport1 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        }else{
            return "\(name) is not an Olympic sport"
        }
    }
}

var skiing = Sport1(name: "Skiing", isOlympicSport: true)

print(skiing.olympicStatus)


//EX property Observers
//(prints every time there is a change in the data using didset)
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


// Methods in Structs
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()



//Mutating Methods
//(if you want to change a var inside the struct use mutating in that function)
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()





//String is a struct
let myStr = "Do or do not, there is no try."

print(myStr.count)
print(myStr.hasPrefix("Do"))
print(myStr.uppercased())
print(myStr.sorted())


//Array is also a struct

var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")

toys.firstIndex(of: "Buzz")
toys.remove(at: 0)
print(toys)
