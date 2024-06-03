//
//  LoginViewController.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 03.06.2024.
//

import UIKit
import FirebaseAuth
import Combine

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var loginCard: CustomView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var primaryBtn: UIButton!
    @IBOutlet weak var accessoryBtn: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var emailEmpty = true
    var passwordEmpty = true
    private var tokens: Set<AnyCancellable> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseInOut) {
            self.loginCard.alpha = 1.0
            self.loginCard.frame = self.loginCard.frame.offsetBy(dx: 0, dy: -400)
        }
        emailField.publisher(for: \.text)
            .sink { newValue in
                if newValue != nil && newValue != "" {
                    self.emailEmpty = false
                } else {
                    self.emailEmpty = true
                }
            }
            .store(in: &tokens)
        
        passwordField.publisher(for: \.text)
            .sink { newValue in
                if newValue != nil && newValue != "" {
                    self.passwordEmpty = false
                } else {
                    self.passwordEmpty = true
                }
            }
            .store(in: &tokens)
    }
    @IBAction func primaryAction(_ sender: Any) {
        if (emailEmpty || passwordEmpty) == true {
            let alert = UIAlertController(title: "Missing Information", message: "Please make sure to enter a valid email and password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
        } else {
            
            Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!) { result, err in
                if err != nil {
                    print(err!.localizedDescription)
                } else {
                    self.goToHomeScreen()
                }
            }
        }
    }
    
    
    @IBAction func accessoryAction(_ sender: Any) {
    }
    
    func goToHomeScreen() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CustomTabBarViewController") as! CustomTabBarViewController
        vc.modalTransitionStyle = .flipHorizontal
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}
