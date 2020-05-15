//
//  ViewController.swift
//  WebView App
//
//  Created by Pranav Arjun on 13/05/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit
//import WebKit
import SafariServices

class ViewController: UIViewController {
  //  @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     //   webView.load(URLRequest(url:URL(string: "https://www.youtube.com/")!))
    }

    @IBAction func browseTapped(_ sender: Any) {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.youtube.com/")!)
        
        present(vc, animated: true, completion: nil)
    }
    
}

