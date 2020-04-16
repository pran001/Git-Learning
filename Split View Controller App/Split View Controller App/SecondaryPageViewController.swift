//
//  SecondaryPageViewController.swift
//  Split View Controller App
//
//  Created by Pranav Arjun on 13/02/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit

class SecondaryPageViewController: UIPageViewController {
    
    fileprivate lazy var pages: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "blueViewController"),
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "redViewController"),
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "greenViewController")
        ]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.dataSource = self
        if let firstVC = pages.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
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


extension SecondaryPageViewController: UIPageViewControllerDelegate{
    
    
}

extension SecondaryPageViewController: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex =  pages.firstIndex(of: viewController) else {
            
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else {
            return pages.last
        }
        
        guard pages.count > previousIndex else{ return nil}
        
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex =  pages.firstIndex(of: viewController) else {
            
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < pages.count else {
            return pages.first
        }
        
        guard pages.count > nextIndex else{ return nil}
        
        return pages[nextIndex]
    }
    
    
    
}
