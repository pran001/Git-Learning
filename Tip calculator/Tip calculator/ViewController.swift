//
//  ViewController.swift
//  Tip calculator
//
//  Created by Pranav Arjun on 17/01/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalBill: UITextField!
    
    @IBOutlet weak var percentageTip: UITextField!
    
    @IBOutlet weak var tipTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipCalculation(_ sender: Any) {
        
        print(totalBill.text!)
        print(percentageTip.text!)
        
        if let totalBill = totalBill.text,
            let percentageTip = percentageTip.text,
            let billTotal = Double(totalBill),
            let percentTip =  Double(percentageTip) {
            
            let tip = billTotal * (percentTip/100)
            print(tip)
            
            tipTotal.text = "Tip: $ \(tip)"
        }
//        let billTotal = Double(totalBill.text!)!
//        let percentTip = Double(percentageTip.text!)!
//
//        let tip = billTotal * (percentTip/100)
//
//        print(tip)
//
//        tipTotal.text = "Tip: $ \(tip)"
        
    }
    
}

