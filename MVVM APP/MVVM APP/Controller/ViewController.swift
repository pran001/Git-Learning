//
//  ViewController.swift
//  MVVM APP
//
//  Created by Pranav Arjun on 11/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // #1 - The UITableViewDataSource and
            // UITableViewDelegate protocols are
            // adopted in extensions.
            tableView.delegate = self
            tableView.dataSource = self
        }
     
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "DetailSegue" {
                
                if let destinationViewController = segue.destination as? DetailViewController
                {
                    let indexPath = self.tableView.indexPathForSelectedRow!
                    let index = indexPath.row
                    // #2 - The ViewModel is the app's de facto data source.
                    // The ViewModel data for the currently-selected table
                    // view cell representing a Messier object is passed to
                    // a detail view controller via a segue.
                    destinationViewController.messierViewModel = messierViewModel[index]
                }
            }
            
        } // end func prepare
     
    } // end class ViewController


}

