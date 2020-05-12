// Basics of Protocol
//
//
protocol Humanable{
    
    var name: String { get set}
    var isLiving: Bool {get}
    
    func sayHi()
    
}

struct Indian : Humanable {
    
    var name: String = "Pranav"
    var isLiving: Bool = true
    
    func sayHi() {
        print("Say \(name)")
    }
    
}

protocol SuperHumanable : Humanable {
    
    var canFly: Bool { get set}
    func punch()
}

struct Pranav : SuperHumanable {
    var canFly: Bool = false
    
    func punch() {
        print("I don't fly")
    }
    
    var name: String = "Arjun"
    
    var isLiving: Bool = true
    
    func sayHi() {
        print("\(name)")
    }
}

// { get set } only applied to computed properties

protocol Breathable {
    var isBreathable : Bool { get set}
    var isMoving: Bool { get }
}

struct Human : Breathable {
    var isBreathable: Bool{
    get { return true}
    set {}
    }
    var isMoving: Bool {
        get{ return true}
        set{}
    }
    
    
    
}


/// Protocol Extension

protocol Student {
    
    func callHim()
}

extension Student {
    
    func callHim() {
        print("Hello Student")
    }
}

struct Ram : Student {}

Ram().callHim()

class Krushna: Student {
    
    func callHim() {
        print("Hey from Krushna!!")
    }
    
}
Krushna().callHim()
