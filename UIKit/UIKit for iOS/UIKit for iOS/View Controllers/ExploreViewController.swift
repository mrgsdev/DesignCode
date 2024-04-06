//
//  ExploreViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 06.04.2024.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var sectionCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionCollectionView.backgroundColor = .clear
        sectionCollectionView.dataSource = self
        sectionCollectionView.delegate = self
        sectionCollectionView.layer.masksToBounds = false
    }

}
extension ExploreViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SectionsCell", for: indexPath) as! SectionCollectionViewCell
        let section = sections[indexPath.item]
        cell.titleLabel.text = section.sectionTitle
        cell.subtitleLabel.text = section.sectionDescription
        cell.logo.image = section.sectionIcon
        cell.banner.image =  section.sectionBanner
        return cell
    }
    
    
}
