//
//  XYZViewController.swift
//  PersonList App
//
//  Created by Pranav Arjun on 06/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class XYZViewController: UIViewController {
    
    public let x = 10;
    fileprivate let y = 20;

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension XYZViewController {
    func printVariables(){
        print("\(self.y)")
    }
}

extension ABCViewController {
    func printVariables(){
        let xyzVC = XYZViewController()
        print("\(xyzVC.y)")
    }
}
