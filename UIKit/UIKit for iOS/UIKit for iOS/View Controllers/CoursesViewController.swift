//
//  CoursesViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 02.04.2024.
//

import UIKit
import Combine
class CoursesViewController: UIViewController {
    var course: Course?
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var sectionsTableView: UITableView!
    @IBOutlet weak var bannerImage:UIImageView!
    @IBOutlet weak var backgroundImage:UIImageView!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var authorLabel:UILabel!
    @IBOutlet weak var descriptionLabel:UILabel!
    @IBOutlet weak var subtitleLabel:UILabel!
    @IBOutlet weak var iconImageView:UIImageView!
    @IBOutlet weak var tableViewHeight:NSLayoutConstraint!
    // Add UIMenu
    
    private var tokens: Set<AnyCancellable> = []
    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.iconImageView.image = course?.courseIcon
        self.bannerImage.image = course?.courseBanner
        self.backgroundImage.image = course?.courseBackground
        self.titleLabel.text = course?.courseTitle
        self.subtitleLabel.text = course?.courseSubtitle
        self.descriptionLabel.text = course?.courseDescription
        self.authorLabel.text = "Taught by \(course?.courseAuthor?.formatted(.list(type: .and, width: .standard)) ?? "Design+Code")"
        
        
        // Table View
        self.sectionsTableView.delegate = self
        self.sectionsTableView.dataSource = self
        self.sectionsTableView.rowHeight = UITableView.automaticDimension
        self.sectionsTableView.estimatedRowHeight = UITableView.automaticDimension
        
        // Subscribe to table view changes
        sectionsTableView
            .publisher(for: \.contentSize)
            .sink { contentSize in
            self.tableViewHeight.constant = contentSize.height + 10
        }
        .store(in: &tokens)
        
        let menu = UIMenu(
            title: "Course Options",
            options: .displayInline,
            children: [
                UIAction(title: "Share", image: UIImage(systemName: "square.and.arrow.up"), handler: { _ in
                    
                }),
                UIAction(title: "Take Test", image: UIImage(systemName: "highlighter"), handler: { _ in
                    
                }),
                UIAction(title: "Download", image: UIImage(systemName: "square.and.arrow.down"), handler: { _ in
                    
                }),
                UIAction(title: "Forums", image: UIImage(systemName: "chevron.left.forwardslash.chevron.right"), handler: { _ in
                    
                })
            ]
        )
        menuButton.showsMenuAsPrimaryAction = true
        menuButton.menu = menu
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}
extension CoursesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.course?.sections.count ?? 0 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell", for: indexPath) as! SectionTableViewCell
        if let course = course {
            let selectedSection = course.sections[indexPath.row]
            cell.titleLabel.text = selectedSection.sectionTitle
            cell.courseLogo.image = selectedSection.sectionIcon
            cell.descriptionLabel.text = selectedSection.sectionDescription
            cell.subtitleLabel.text = selectedSection.sectionSubtitle
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
