

// Protocol as type

// Problem : No more type casting

let pranav : Any = [1, "Student", ["Kalamb", "Walchand Nagar"]]

//  Introduce Protocol

protocol Indian {
    var isNorthIndian : Bool { get }
    var state: String { get }
}

extension Indian {
    var isNorthIndian : Bool {
        return true
    }
}

// Create blue print

struct DelhiState: Indian {
    
    var state : String = "Delhi"
}

struct MhState: Indian {
    
    var state : String = "MH"
}

struct GoaState: Indian {
    
    var state : String = "Goa"
}

let indians: [Indian] = [DelhiState(), MhState(), GoaState()]


//Practical Example
// Combine - UILable , UIImageView, .....

