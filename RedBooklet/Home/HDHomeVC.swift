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
        // MARK: ButtonBar 导选中条颜色
        settings.style.selectedBarHeight = 2
        settings.style.selectedBarBackgroundColor = UIColor(named: "theme")!
        //        public var selectedBarVerticalAlignment: SelectedBarVerticalAlignment = .bottom
        settings.style.selectedBarVerticalAlignment = .bottom
        
        // MARK: ButtonBar button设置
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemTitleColor = .label
        settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        settings.style.buttonBarItemLeftRightMargin = 0
        
        super.viewDidLoad()
        
        containerView.bounces = false
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
        }
        
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let discoveryVC = storyboard!.instantiateViewController(withIdentifier: kDiscoveryVCIdentifier)
        let followVC    = storyboard!.instantiateViewController(withIdentifier: kFollowVCIdentifier)
        let nearbyVC    = storyboard!.instantiateViewController(withIdentifier: kNearbyVCIdentifier)
        return [discoveryVC, followVC, nearbyVC]
    }


}
