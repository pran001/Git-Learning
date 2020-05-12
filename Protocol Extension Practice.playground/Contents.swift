

// Protocol Extension


protocol FindAreaProto {
    
    func calArea(side: Double, length: Double) -> String
}

extension FindAreaProto{
    
    func calArea(side: Double, length: Double) -> String {
        
        let area = String(side * length)
        return "Area is \(area)"
    }
}
struct Square : FindAreaProto {}
struct Rectangle : FindAreaProto {}

Square().calArea(side: 7.0, length: 7.0)
Rectangle().calArea(side: 4.0, length: 7.0)


//Usage
//UILabel , UIView, UISlider etc.
