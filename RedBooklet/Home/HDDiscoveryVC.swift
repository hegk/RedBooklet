//
// HDDiscoveryVC.swift
// RedBooklet
//
// Created by Reid on 2023/9/2
// Copyright © 2023 R. All rights reserved.
// 
    

import UIKit
import XLPagerTabStrip

class HDDiscoveryVC: UIViewController, IndicatorInfoProvider  {
   
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        IndicatorInfo(title: "发现")
    }

}
