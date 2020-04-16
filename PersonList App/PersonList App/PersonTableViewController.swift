//
//  PersonTableViewController.swift
//  PersonList App
//
//  Created by Pranav Arjun on 02/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    var personList : [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person1 = Person()
        person1.name = "Pranav"
        
        let person2 = Person()
        person2.name = "Raj"
        
        personList = [person1,person2]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let person = personList[indexPath.row]
        
        cell.textLabel?.text = person.name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let createVC = segue.destination as? CreatingPersonViewController {
            
            createVC.delegate = self
            
        }
    }
    
}

extension PersonTableViewController: CreatingPersonDelegate {
    func updatePersonList(person: Person) {
        self.personList.append(person)
        self.tableView.reloadData()
    }
}
