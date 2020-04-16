//
//  ViewController.swift
//  Swipe Gesture Recognizer
//
//  Created by Pranav Arjun on 26/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        // the default direction is right
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        leftSwipe.direction = .left
        
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        upSwipe.direction = .up
        
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        downSwipe.direction = .down
        
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(upSwipe)
        view.addGestureRecognizer(downSwipe)    }
    
    
    @objc func handleSwipe(sender:UISwipeGestureRecognizer) {
        
        if sender.state == .ended {
            
            switch sender.direction{
            case .right:
                view.backgroundColor = .red
            case .left:
                view.backgroundColor = .green
            case .up:
                view.backgroundColor = .yellow
            case .down:
                view.backgroundColor = .brown
            default:
                break
            }
        }
        
        
    }
    
    
}

