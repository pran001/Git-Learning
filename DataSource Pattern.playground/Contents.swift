

// DataSource Pattern

// Problem:- Bi- Directional Communication

// Purpose - Communicate (Backword) from SecondVC (delegate) to FirstVC (Delegator)

// Design Protocol

protocol PassDataDataSource {
    func passData(data: String) -> String
}

// DCesign Delegator (Sender)

class FirstVC {
    var delegate: PassDataDataSource?
}
FirstVC().delegate?.passData(data: "Hey again")

// Design Delegate (Receiver)

class SecondVC : PassDataDataSource {
    func passData(data: String) -> String {
        print("Hey \(data)")
        
        return "Hey \(data)"
    }
}

// Create Objects

let firstVC = FirstVC()
let secondVC = SecondVC()

// Assign delegate

firstVC.delegate = secondVC
let message = firstVC.delegate?.passData(data: "Passed Data ")

print(message)


//Important:- Delegate methods does not return value but dataSource methods return values


// Practical example

import UIKit
class MyViewController: UIViewController,UITableViewDataSource{
    var tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(style: .default, reuseIdentifier: "cell")
    }
    
    
}

//Usage
//UITableView
//UICollectionView
