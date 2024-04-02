//
//  CoursesViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 02.04.2024.
//

import UIKit

class CoursesViewController: UIViewController {
    var course: Course?
    override func viewDidLoad() {
        super.viewDidLoad()

        print(course?.courseTitle)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
