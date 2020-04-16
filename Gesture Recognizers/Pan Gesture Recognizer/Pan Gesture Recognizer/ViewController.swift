//
//  ViewController.swift
//  Pan Gesture Recognizer
//
//  Created by Pranav Arjun on 26/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box: UIView!
    
    var initialCenterPoint = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        box.addGestureRecognizer(panGesture)
    }
    
    @objc func handlePan(_ pan: UIPanGestureRecognizer) {
        if pan.state == .began {
            self.initialCenterPoint = box.center
        }
        
        let translation = pan.translation(in: view)
        
        if pan.state != .cancelled {
            let newCenter = CGPoint(x: initialCenterPoint.x + translation.x, y: initialCenterPoint.y + translation.y)
            box.center = newCenter
        } else {
            box.center = initialCenterPoint
        }
    }


}

