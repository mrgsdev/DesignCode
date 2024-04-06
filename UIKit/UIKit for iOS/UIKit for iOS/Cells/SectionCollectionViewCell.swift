//
//  SectionCollectionViewCell.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 06.04.2024.
//

import UIKit

class SectionCollectionViewCell: UICollectionViewCell {
     
    @IBOutlet weak var banner: UIImageView!
    @IBOutlet weak var logo: CustomImageView!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
     
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        super.layoutIfNeeded()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(named: "Shadow")!.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 10
        layer.masksToBounds = false
        layer.cornerRadius = 30
        layer.cornerCurve = .continuous
    }
    
    override public func prepareForReuse() {
        super.prepareForReuse()
    }
}
