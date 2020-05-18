import PlaygroundSupport
import UIKit
 
// UserDefaults

var dict = [
    "name": "John Doe",
    "language": "English",
    "occupation": "Carpenter"
]

print(dict)

let name = "John Doe"
UserDefaults.standard.set(name, forKey: "name")

UserDefaults.standard.removeObject(forKey: "name")

UserDefaults.standard.set("Arthur Dent", forKey: "name")

// Getting data from userDefaults

let userName = UserDefaults.standard.string(forKey: "name")
print(userName)

let userName1 = UserDefaults.standard.string(forKey: "name") ?? "Unknown user"

let defaults    = UserDefaults.standard
let userName3        = defaults.string(forKey: "name") ?? "Unknown user"
let occupation  = defaults.string(forKey: "occupation") ?? "Unknown"
let age         = defaults.integer(forKey: "age") ?? 0
