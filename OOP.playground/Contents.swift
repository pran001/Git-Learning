
//Abstraction

protocol Drivable {
    var speed: Float { get set }
    
}

extension Drivable {
    func accelerate(by: Float) {
        _ = speed+by
    }
}

class Car: Drivable {
    var speed: Float = 20.0
    var gear: Int
    init(gear: Int) {self.gear = gear}
    
}

class Ford: Car{
    
}


let c = Car(gear: 3)
c.accelerate(by: 10)
c.gear

let ford1 = Ford(gear: 4)
ford1.speed
ford1.accelerate(by: 30)


