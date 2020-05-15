//
//  ViewController.swift
//  FaceID and TouchID
//
//  Created by Pranav Arjun on 15/05/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        
        let context: LAContext = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) {
            
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Message to user") { (success, error) in
                if success {
                    print("Success")
                } else {
                    print("Try Again")
                }
            }
        }
    }
    
    
    
}

