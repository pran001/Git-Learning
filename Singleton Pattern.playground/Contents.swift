


// Singleton Pattern

//A singleton is an object which is instantiated exactly once

class AccountManager {
    
    static let sharedInstance = AccountManager()
    var userInfo = (Id: "pranav", Password: 123456)
    
    func network() {
        
    }
    
    private init() { }
}

//AccountManager()

//VC One
AccountManager.sharedInstance.userInfo.Id

//VC Two
AccountManager.sharedInstance.userInfo.Id = "pranav1"

//VC Three
AccountManager.sharedInstance.userInfo.Id

