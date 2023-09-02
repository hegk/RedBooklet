//
// HDNearbyVC.swift
// RedBooklet
//
// Created by Reid on 2023/9/2
// Copyright © 2023 R. All rights reserved.
// 
    

import UIKit
import XLPagerTabStrip

class HDNearbyVC: UIViewController, IndicatorInfoProvider {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        // TODO: 这里需要根据具体城市做判断
        IndicatorInfo(title: "附近")
    }

}
