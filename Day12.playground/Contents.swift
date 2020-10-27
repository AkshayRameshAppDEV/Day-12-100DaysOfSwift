// Handling Missing Data
// No value = nil
// Any data type can be optional and is marked with question mark ?
// it can either have data type as a value or nil
var intOptional: Int?
intOptional = 0
intOptional = nil

// Unwrapping
// using if let syntax
// if the optional has a value, does operation in if block, if nil, i.e fails, it goes to else block
var stringOptional: String?
if let str = stringOptional {
    print("I am the str value -> \(str)")
} else {
    print("I dont have any value :(")
}

// guard let
// Similar to if let but when it finds nil -> It needs to exit, return...
// guar let variable , the variable can be used anywhere within funtion wherever accessible.
// variable inside guard cannot be used inside body
func optionalFunc(num: Int?) {
    guard let optionalNum = num else {
        print("Bad num \(num)")
        return
    }
    print("I am Successful \(optionalNum)")
}
optionalFunc(num: nil) //bad
optionalFunc(num: 3) //good

// Force Unwrapping
// Unwrap the optional using ! on when you are sure if its safe and has value.
func forceUnwrap(arr: [Int?]){
    for item in arr {
        print("I am safe \(item!)")
    }
}
forceUnwrap(arr: [1,2,3,4])


// Implicit unwrapped optionals
//  No need to use if let/ guard let to unwrap
// straight away unwrap using ! while declaration
// Generally a BAD practice
func implicitUnwrap(name: String?) {
    var a: String! = nil
    a = name
    print("I implicitly unwrapped! \(a)")
}
implicitUnwrap(name: "Akshay")

// Nil Coalescing
// When reading/unwrapping optional value.. you will either get value or a default value of the optional type
// default value is written after ??
var akshay: String?
akshay = nil
let printDefault = akshay ?? "Akshay" // print's default value cuz the optional value is nil

// Optional Chaining
// For instance if you want to chain methods a.b.c
// and b is optional
// We can write it as a.b?.c -> b optional and has value then c operation is done, if its nil then whole expression is nil
var optionalChainingExample: String?
//optionalChainingExample = "" // returns hash
// optionalChainingExample = nil // whole expression is nil
optionalChainingExample?.count.hashValue

// Optional Try
// When a function throws an error use try? or try! (when you know you get a value)
enum NoCricketFormat: Error {
    case BAD
}
func checkFormat(type: String) throws -> Bool {
    if type == "IPL" {
        throw NoCricketFormat.BAD
    }
    return true
}

do {
    let x = try checkFormat(type: "IPL")
    print(x)
} catch {
    print(error)
}

// Failable Initializers
// When creating a object out of struct or class, if the initilzer fails we can return optional nil but the init method should be init?()
struct Failable {
    var id: Int
    init?(id: Int) {
        if id == 911 {
            return nil
        } else {
            self.id = id
        }
    }
}
var f = Failable(id: 911) // Returns nil because of failable initializer

// Type casting
// When you want to explicitly know the class use as? DataType to filter only that datatype
class Student {
    
}
class Alumni: Student {
    func party() {
        print("I am partying!")
    }
}

class FullTimeStudent: Student {
    func writeExam() {
        print("I am writing exam!")
    }
}

let x = [Student(), FullTimeStudent(), FullTimeStudent(), Student(), Alumni(), Alumni()]
for item in x {
    if let result = item as? FullTimeStudent {
        print(result.writeExam())
    }
}

