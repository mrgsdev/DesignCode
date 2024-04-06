//
//  ExploreViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 06.04.2024.
//

import UIKit
import Combine
class ExploreViewController: UIViewController {
    private var tokens: Set<AnyCancellable> = []
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var topicsTableView: UITableView!
    @IBOutlet weak var sectionCollectionView: UICollectionView!
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionCollectionView.backgroundColor = .clear
        sectionCollectionView.dataSource = self
        sectionCollectionView.delegate = self
        sectionCollectionView.layer.masksToBounds = false
        
        // Table View
        self.topicsTableView.delegate = self
        self.topicsTableView.dataSource = self
        self.topicsTableView.layer.masksToBounds = true
        
        // Subscribe to table view changes
        topicsTableView
            .publisher(for: \.contentSize)
            .sink { contentSize in
            self.tableViewHeight.constant = contentSize.height + 10
        }
        .store(in: &tokens)
        
        self.popularCollectionView.delegate = self
        self.popularCollectionView.dataSource = self
        self.popularCollectionView.layer.masksToBounds = false
        self.popularCollectionView.backgroundColor = .clear
    }

}
extension ExploreViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == sectionCollectionView {
            return sections.count
        } else {
            return handbooks.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == sectionCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SectionsCell", for: indexPath) as! SectionCollectionViewCell
            let section = sections[indexPath.item]
            
            cell.titleLabel.text = section.sectionTitle
            cell.subtitleLabel.text = section.sectionSubtitle
            cell.logo.image = section.sectionIcon
            cell.banner.image = section.sectionBanner

            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! HandbookCollectionViewCell
            let handbook = handbooks[indexPath.item]

            cell.titleLabel.text = handbook.courseTitle
            cell.subtitleLabel.text = handbook.courseSubtitle
            cell.descriptionLabel.text = handbook.courseDescription
            cell.gradient.colors = handbook.courseGradient
            cell.logo.image = handbook.courseIcon
            cell.banner.image = handbook.courseBanner

            return cell
        }
    }
}
extension ExploreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath) as! TopicTableViewCell
        let topic = topics[indexPath.row]
        
        cell.topicLabel.text = topic.topicName
        cell.topicIcon.image = UIImage(systemName: topic.topicSymbol)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
