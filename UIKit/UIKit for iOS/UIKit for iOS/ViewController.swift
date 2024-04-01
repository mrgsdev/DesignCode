//
//  ViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 29.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    @IBOutlet weak var handbooksCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        handbooksCollectionView.delegate = self
        handbooksCollectionView.dataSource = self
        handbooksCollectionView.backgroundColor = .clear
    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! HandbookCollectionViewCell
        cell.titleLabel.text = "SwiftUI Handbook"
        cell.subtitleLabel.text = "20 HOURS - 30 SECTIONS"
        cell.descriptionLabel.text = "Learn about all the basics of SwiftUI"
        cell.gradient.colors = [UIColor.red.cgColor,UIColor.systemPink.cgColor]
        cell.logo.image = UIImage(named: "Logo React")
        cell.banner.image = UIImage(named: "Illustration 2")
        return cell
    }
    
    
}
