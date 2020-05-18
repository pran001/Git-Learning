//
//  ViewController.swift
//  Keychain Demo App
//
//  Created by Pranav Arjun on 18/05/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit
//import Locksmith
import SwiftKeychainWrapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        Saving some data into Keychain
        
//        do {
//
//            try Locksmith.saveData(data: ["password": "pranav123"], forUserAccount: "LockSmithDemo")
//        }catch {
//            //            could not save the data into keychain
//            print("Data not saved")
//
//        }
//
//        //        Retrieve the data from keychain
//        let dictionary = Locksmith.loadDataForUserAccount(userAccount: "LockSmithDemo")
//
//        print(dictionary)
        
//        KeychainWrapper
//        1. Send HTTP post to Server to perform Login
//        2. Read userId from JSON or XML
        
        let userId = "pranav123"
        
//        3. String userId into Keychain
        
        let isSaved: Bool = KeychainWrapper.standard.set(userId, forKey: "userId")
        
//        4. Read userId from iOS keychain
        
        let retrievedUserId: String?  = KeychainWrapper.standard.string(forKey: "userId")
        
        print("User Id = \(retrievedUserId)")
    }


}

