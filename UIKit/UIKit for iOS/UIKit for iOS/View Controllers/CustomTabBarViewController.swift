//
//  CustomTabBarViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 05.04.2024.
//

import UIKit

class CustomTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.selectionIndicatorImage = UIImage(named: "Selected")
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.cornerRadius = 30
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        self.additionalSafeAreaInsets.bottom = 20
        self.tabBar.tintColor = UIColor(named: "TabBarTint")
    }
    
}
