//
//  ViewController.swift
//  Long Press Gesture
//
//  Created by Pranav Arjun on 26/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(sender:)))
        imageView.addGestureRecognizer(longPress)
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    @objc func handleLongPress(sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            let menu = UIMenuController.shared
            becomeFirstResponder()
            
            let menuItemCrop = UIMenuItem(title: "Crop", action: #selector(handleMenuItemAction))
            let menuItemRotate = UIMenuItem(title: "Rotate", action: #selector(handleMenuItemAction))
            let menuItemContrast = UIMenuItem(title: "Contrast", action: #selector(handleMenuItemAction))
            let menuItemVibrance = UIMenuItem(title: "Vibrance", action: #selector(handleMenuItemAction))
            menu.menuItems = [menuItemCrop, menuItemRotate, menuItemContrast, menuItemVibrance]
            
            let location = sender.location(in: sender.view)
            let menuLocation = CGRect(x: location.x, y: location.y, width: 0, height: 0)
            menu.setTargetRect(menuLocation, in: sender.view!)
            menu.setMenuVisible(true, animated: true)
        }
    }
    
    @objc func handleMenuItemAction() {
        print("menu item tapped")
    }



}

