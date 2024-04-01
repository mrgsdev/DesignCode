//
//  ViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 29.03.2024.
//

import UIKit

class FeaturedViewController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    @IBOutlet weak var handbooksCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        handbooksCollectionView.delegate = self
        handbooksCollectionView.dataSource = self
        handbooksCollectionView.backgroundColor = .clear
        handbooksCollectionView.layer.masksToBounds = true
    }


}

extension FeaturedViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return handbooks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! HandbookCollectionViewCell
        let handbook = handbooks[indexPath.row]
        cell.titleLabel.text = handbook.courseTitle
        cell.subtitleLabel.text = handbook.courseSubtitle
        cell.descriptionLabel.text = handbook.courseDescription
        cell.gradient.colors = handbook.courseGradient
        cell.logo.image = handbook.courseIcon
        cell.banner.image = handbook.courseBanner
        return cell
    }
    
    
}
