//
//  ViewController.swift
//  UIWeb View Demo
//
//  Created by Pranav Arjun on 27/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet private weak var webView: WKWebView!
    private let myUrl = URL(string: "https://www.youtube.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = URLRequest(url: myUrl!)
        webView.load(request)
        
        
    }


}

