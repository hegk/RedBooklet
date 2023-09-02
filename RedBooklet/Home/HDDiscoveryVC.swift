//
// HDDiscoveryVC.swift
// RedBooklet
//
// Created by Reid on 2023/9/2
// Copyright © 2023 R. All rights reserved.
// 
    

import UIKit
import XLPagerTabStrip

class HDDiscoveryVC: ButtonBarPagerTabStripViewController, IndicatorInfoProvider  {
   
    

    override func viewDidLoad() {
        // MARK: ButtonBar 导选中条颜色
        settings.style.selectedBarHeight = 0
        settings.style.selectedBarBackgroundColor = .clear
        
        // MARK: ButtonBar button设置
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemFont = .systemFont(ofSize: 14)
        
        super.viewDidLoad()
        
        containerView.bounces = false
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
        }
    }
    
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        IndicatorInfo(title: "发现")
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        var vcs: [HDWaterfallVC] = []
        for module in kDiscoveryModule {
            let discoveryVC = storyboard!.instantiateViewController(withIdentifier: kWaterfallVCIdentifier) as! HDWaterfallVC
            discoveryVC.moduleName = module
            vcs.append(discoveryVC)
        }
        return vcs
    }

}
