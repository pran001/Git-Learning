//
//  MasterViewController.swift
//  Split View Controller App
//
//  Created by Pranav Arjun on 13/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

protocol MasterViewControllerDelegate{
    
    func didTappedAnimal(animal:Animal)
}

class MasterViewController: UITableViewController {
    
    let animals: [Animal] = [
        Animal(name: "Dog", speed: "10"),
        Animal(name: "Tiger", speed: "20"),
        Animal(name: "Cheetah", speed: "50"),
        Animal(name: "Elephant", speed: "6")
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "masterViewCell", for: indexPath)
        
        cell.textLabel?.text = animals[indexPath.row].name

        return cell
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let navController = segue.destination as! UINavigationController,
//            let viewController = navController.topViewController as! SecondaryPageViewController else{
//
//                fatalError("Expected Detail View Controller")
//        }
//    }
    

}
