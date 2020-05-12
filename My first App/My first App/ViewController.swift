//
//  ViewController.swift
//  My first App
//
//  Created by Pranav Arjun on 16/01/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centreLabel: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }

    @IBAction func buttonTapped(_ sender: Any) {
        count += 1
        
        if count < 11 {
        
        centreLabel.text = String(count)
            
        } else {
            
            view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }

    }
    
}

