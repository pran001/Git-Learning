


// Generics in Swift
// Problems:-
//        Needless Complexity
//        Duplications
//        Overused tyuped literals
//        over usage of var instead of let


let highSchoolGPA = [2.5, 2.8, 3.2, 5.4, 2.4]
let favPeople = ["Ram", "Krishna", "Om"]
let favNumber = [4,1]


//worst method

highSchoolGPA[0]
highSchoolGPA[1]

//Typical solution

func printDoubleElement(array: [Double]){
    
    for GPA in array{
        print (GPA)
    }
}

func printStringElement(array: [String]){
    
    for person in array{
        print (person)
    }
}

func printNumberElement(array: [Int]){
    
    for number in array{
        print (number)
    }
}

//printDoubleElement(array: highSchoolGPA)
//printStringElement(array: favPeople)

//Introduce Generics

func genericFunction<anything> (value:anything) {
    print(value)
}
genericFunction(value: "Pranav")
genericFunction(value: 12345)
genericFunction(value: highSchoolGPA)

func genericFunctions<T> (value:T) {
    print(value)
}
genericFunctions(value: 1222)

//Struct met generics

//non-generic code

struct Family {
    
    var members: [String] = []
    
    mutating func push(member:String){
        members.append(member)
    }
}

var myFam = Family()

myFam.push(member: "Pranav")
myFam.members

struct GenericFam<anything> {
    
    var members: [anything] = []
       
       mutating func push(member:anything){
           members.append(member)
       }
}

// Generic initialisation
// T Implicit define

let myHappyFAmily = GenericFam(members: [1,3,5,"Pranav"])

//Explicitly
var genericFamily = GenericFam<Int>()
genericFamily.push(member: 10)


extension GenericFam {
    
    var firstElement: anything? {
        if members.isEmpty {
            return nil
        } else {
            return members[0]
        }
    }
}
genericFamily.firstElement

// Type constraint

class One {}
class Two : One {}

let example = One()

func addOneClassOnly<T :One>(array: [T]) {}

addOneClassOnly(array: [example,example])
addOneClassOnly(array: [Two()])
