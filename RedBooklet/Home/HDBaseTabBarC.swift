//
// HDBaseTabBarC.swift
// RedBooklet
//
// Created by Reid on 2023/9/9
// Copyright © 2023 R. All rights reserved.
// 
    

import UIKit
import YPImagePicker

class HDBaseTabBarC: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if let vc = viewController as? HDUploadVC {
            
            var config = YPImagePickerConfiguration()
            config.isScrollToChangeModesEnabled = false
            config.onlySquareImagesFromCamera = false
            config.shouldSaveNewPicturesToAlbum = true
            config.albumName = "小红书HD"
            config.albumName = Bundle.main.appName
            
            
            let picker = YPImagePicker(configuration: config)
            picker.didFinishPicking { [unowned picker] items, _ in
                if let photo = items.singlePhoto {
                    print(photo.fromCamera) // Image source (camera or library)
                    print(photo.image) // Final image selected by the user
                    print(photo.originalImage) // original image selected by the user, unfiltered
                    print(photo.modifiedImage as Any) // Transformed image, can be nil
                }
                picker.dismiss(animated: true, completion: nil)
            }
            present(picker, animated: true, completion: nil)
            
            return false
        }
        return true
    }

}
