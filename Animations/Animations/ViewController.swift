//
//  ViewController.swift
//  Animations
//
//  Created by Pranav Arjun on 17/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var pulseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 6) {
            self.customView.alpha = 1
        }
        
        pulseButton.layer.cornerRadius = pulseButton.frame.size.height/2
        pulseButton.layer.masksToBounds = true
        
    }
    
    @IBAction func pulseTapped(_ sender: UIButton) {
        sender.flash()
    }
    

}
