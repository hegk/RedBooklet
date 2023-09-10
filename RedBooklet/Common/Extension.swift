//
// Extension.swift
// RedBooklet
//
// Created by Reid on 2023/9/10
// Copyright © 2023 R. All rights reserved.
// 
    

import Foundation

extension Bundle {
    var appName: String {
        // Bundle.main.infoDictionary  // info.plict
        // Bundle.main.localizedInfoDictionary //  infoPlist.String
        if let appName = localizedInfoDictionary?["CFBundleDisplayName"] as? String {
            return appName
        } else {
            return infoDictionary!["CFBundleDisplayName"] as! String
        }
    }
}
