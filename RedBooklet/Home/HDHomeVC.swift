//
// HDHomeVC.swift
// RedBooklet
//
// Created by Reid on 2023/9/1
// Copyright © 2023 R. All rights reserved.
// 
    

import UIKit
import XLPagerTabStrip

class HDHomeVC: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let discoveryVC = storyboard!.instantiateViewController(withIdentifier: kDiscoveryVCIdentifier)
        let followVC    = storyboard!.instantiateViewController(withIdentifier: kFollowVCIdentifier)
        let nearbyVC    = storyboard!.instantiateViewController(withIdentifier: kNearbyVCIdentifier)
        return [discoveryVC, followVC, nearbyVC]
    }


}
