//
//  VideoListScreen.swift
//  Custom Cell
//
//  Created by Pranav Arjun on 17/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArrayofVide()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func createArrayofVide() -> [Video]{
        
        var tempVideo: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "image1"), title: "My First Video")
        let video2 = Video(image: #imageLiteral(resourceName: "image2"), title: "My Second Video")
        let video3 = Video(image: #imageLiteral(resourceName: "image3"), title: "My Third Video")


        
//        let video1 = Video(image: image , title: "My First video")
//        let video2 = Video(image: image2, title: "My Second video")
//        let video3 = Video(image: image3, title: "My Third video")
        
        
        tempVideo.append(video1)
        tempVideo.append(video2)
        tempVideo.append(video3)
        
        return tempVideo
    }
    
    

}
extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell") as! VideoCell
        cell.setVideo(video: video)
        return cell
    }
}

