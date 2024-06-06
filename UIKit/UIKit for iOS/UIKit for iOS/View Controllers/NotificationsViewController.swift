//
//  NotificationsViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 06.06.2024.
//

import UIKit
import Combine

class NotificationsViewController: UIViewController {
    
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var cardView: CustomView!
    @IBOutlet weak var tableView: UITableView!
    
    var dataSource: UITableViewDiffableDataSource<TBSection, NotificationModel>! = nil
    var currentSnapshot: NSDiffableDataSourceSnapshot<TBSection, NotificationModel>! = nil
    private var tokens: Set<AnyCancellable> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
        // Configure Data Source
        self.dataSource = UITableViewDiffableDataSource<TBSection, NotificationModel>(tableView: tableView) {
            (tableView: UITableView, indexPath: IndexPath, item: NotificationModel) -> NotificationTableViewCell in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell", for: indexPath) as? NotificationTableViewCell else {
                fatalError("Can't create new cell")
            }
            
            cell.titleLabel.text = item.title
            cell.messageLabel.text = item.message
            cell.subtitleLabel.text = item.subtitle.uppercased()
            cell.banner.image = UIImage(named: item.image)
            
            return cell
            
        }
        self.dataSource.defaultRowAnimation = .fade
        
        
        // Subscribe to table view changes
        tableView
            .publisher(for: \.contentSize)
            .sink { contentSize in
                self.tableViewHeight.constant = contentSize.height + 10
            }
            .store(in: &tokens)
        loadData()
    }
    
    func loadData()   {
        currentSnapshot = NSDiffableDataSourceSnapshot<TBSection, NotificationModel>()
        currentSnapshot.appendSections([.main])
        self.currentSnapshot.appendItems(sampleNotifs, toSection: .main)
        self.dataSource.apply(currentSnapshot, animatingDifferences: true)
    }
    
}

extension NotificationsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
