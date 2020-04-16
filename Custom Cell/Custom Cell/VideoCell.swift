//
//  VideoCell.swift
//  Custom Cell
//
//  Created by Pranav Arjun on 17/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {


    @IBOutlet weak var videoImageView: UIImageView!
    
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video:Video){
        
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
    
}



//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
