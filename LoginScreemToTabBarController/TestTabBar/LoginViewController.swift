//
//  LoginViewController.swift
//  TestTabBar
//
//  Created by EOO61 on 17/11/21.
//  Copyright © 2021 ADDA. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        
        // after login is done, maybe put this in the login web service completion block

            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let mainTabBarController = storyboard.instantiateViewController(withIdentifier:  "MainTabBarController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
           (UIApplication.shared.delegate as? AppDelegate)?.changeRootViewController(mainTabBarController)

        
    }
    
    @IBAction func logoutTapped(_ sender: UIButton) {
        // ...
            // after user has successfully logged out
      
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginNavController = storyboard.instantiateViewController(withIdentifier:  "LoginNavigationController")

        (UIApplication.shared.delegate as? AppDelegate)?.changeRootViewController(loginNavController)
    }
    

}
