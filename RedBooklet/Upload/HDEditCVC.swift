//
// HDEditCVC.swift
// RedBooklet
//
// Created by Reid on 2023/9/22
// Copyright © 2023 R. All rights reserved.
// 
    

import UIKit

class HDEditCVC: UIViewController {

    
    @IBOutlet weak var photoCollectionView: UICollectionView!
    
    let photos = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
extension HDEditCVC: UICollectionViewDelegate {
    
}


extension HDEditCVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kEditPhotoCellIdentifier, for: indexPath) as! HDEditPhotoCell
        cell.photoImage.image = photos[indexPath.item]
        return cell
        
    }
    
}
