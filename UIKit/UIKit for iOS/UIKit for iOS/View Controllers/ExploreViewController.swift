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
