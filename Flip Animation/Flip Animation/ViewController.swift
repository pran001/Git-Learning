//
//  ViewController.swift
//  Flip Animation
//
//  Created by Pranav Arjun on 18/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    private let backImageView: UIImageView! = UIImageView(image: UIImage(named: "image2"))
    private let frontImageView: UIImageView! = UIImageView(image: UIImage(named: "image3"))
    
    private var showingBack = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frontImageView.contentMode = .scaleAspectFill
        backImageView.contentMode = .scaleAspectFill
        
        frontImageView.translatesAutoresizingMaskIntoConstraints = false
        backImageView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.addSubview(frontImageView)
        addGestureToContainerView()
        
    }
    
    @objc func flip() {
        let toView = showingBack ? frontImageView : backImageView
        let fromView = showingBack ? backImageView : frontImageView
        UIView.transition(from: fromView!,
                          to: toView!,
                          duration: 1,
                          options: .transitionFlipFromRight,
                          completion: nil)
        showingBack = !showingBack
    }
    
    private func addGestureToContainerView() {
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(flip))
        singleTap.numberOfTapsRequired = 1
        containerView.addGestureRecognizer(singleTap)
        
    }
    
    @IBAction func flipTapped(_ sender: UIButton) {
        
        self.flip()
    }
    
}




