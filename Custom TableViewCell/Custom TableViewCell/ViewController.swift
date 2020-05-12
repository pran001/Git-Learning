//
//  ViewController.swift
//  Custom TableViewCell
//
//  Created by Pranav Arjun on 28/04/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let elements = ["iPhone11","iPhone11 Pro","iPhone XR","iPhone XS","iPhone XS Max","MacBook Pro",]
    
//    var titlePass: String!
//    var imagePass: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomViewCell", for: indexPath) as! CustomTableViewCell
        
        cell.layer.cornerRadius = cell.frame.height / 2
        
        cell.titleLblCell.text = elements[indexPath.row]
        cell.imageViewCell.image = UIImage(named: elements[indexPath.row])
        
        cell.imageViewCell.layer.cornerRadius = cell.imageViewCell.frame.height / 4
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let indexPath = tableView.indexPathForSelectedRow!
//        let currentCell = tableView.cellForRow(at: indexPath)! as! CustomTableViewCell
//
//        titlePass = currentCell.titleLblCell.text
//        imagePass = currentCell.imageViewCell.image
//
//        performSegue(withIdentifier: "DetailViewSegue", sender: indexPath)
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "DetailViewSegue" {
//            if segue.destination.isKind(of: DetailViewController.self) {
//                let detailVC = segue.destination as! DetailViewController
//
//               // let indexPath = sender as! IndexPath
//
//                detailVC.detTitle = titlePass
//                detailVC.detImage = imagePass
//            }
//        }
//
//    }
    
}

