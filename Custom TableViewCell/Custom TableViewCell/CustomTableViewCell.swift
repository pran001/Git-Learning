//
//  CustomTableViewCell.swift
//  Custom TableViewCell
//
//  Created by Pranav Arjun on 28/04/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var titleLblCell: UILabel!
    
//    var cellImage: UIImage!
//    var label: String = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func tableViewCellSetup(cellImage: UIImage, label: String){
//
//        let label = titleLblCell.text!
//        let cellImage = imageViewCell.image
//
//        self.layer.cornerRadius = self.frame.height / 2
//        imageViewCell.layer.cornerRadius = imageViewCell.frame.height / 2
//
//    }
}
