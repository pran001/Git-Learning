//
//  ViewController.swift
//  Rotation Gesture
//
//  Created by Pranav Arjun on 26/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rotate = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(sender:)))
        view.addGestureRecognizer(rotate)
    }
    
    @objc func handleRotation(sender: UIRotationGestureRecognizer) {
        guard sender.view != nil else { return }
        
        if sender.state == .began || sender.state == .changed {
            sender.view?.transform = sender.view!.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }


}

