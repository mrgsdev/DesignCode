//
//  TopicsTableViewCell.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 06.04.2024.
//

import UIKit

class TopicTableViewCell: UITableViewCell {

    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var topicIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
