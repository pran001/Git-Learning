


// The delegate pattern

// Purpose:- Communicate/Pass data b/w Objects
// Goal:- Send data from FirstVC to SecondVC

// tableview.delegate = self
// collectionView.delegate = self

//CEO(Sender) & Sceretory(Receiver) Relationship

//Design Protocol in Sender
protocol PassDataDelegate {
    func passData(data: String)
}

// Design Delegator (Sender)

class FirstVC {
    var delegate: PassDataDelegate?
    
}

FirstVC().delegate?.passData(data: "A bunch of data")

// Design Delegate (Receiver)

class SecondVC : PassDataDelegate {
    func passData(data: String) {
        print("Something happen")
        print("\(data)")
    }
}

//Create Objects
let firstVC = FirstVC()
let secondVC  = SecondVC()

// Assign Delegate

firstVC.delegate = secondVC
firstVC.delegate?.passData(data: "Hey Data passed from FirstVc to secondVC")


//Practical Example

import UIKit

class MyViewController: UIViewController, UITableViewDelegate {
    
    let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        //UI Change code
    }
}
