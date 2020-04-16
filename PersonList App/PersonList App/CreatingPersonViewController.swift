//
//  CreatingPersonViewController.swift
//  PersonList App
//
//  Created by Pranav Arjun on 02/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

protocol CreatingPersonDelegate: class {
    func updatePersonList(person: Person)
}

class CreatingPersonViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textNameInput: UITextField!
    weak var delegate : CreatingPersonDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addNewPerson(_ sender: Any) {
        
        let newPerson = Person()
        if let name = textNameInput.text {
            newPerson.name = name
            if let delegate = delegate {
                delegate.updatePersonList(person: newPerson)
            }
//            personTableVC?.personList.append(newPerson)
//            personTableVC?.tableView.reloadData()
            navigationController?.popViewController(animated: true)
        }
    }
    
    
}

