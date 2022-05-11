//
//  MainTabBarController.swift
//  AppMusic
//
//  Created by Александр Старков on 11.05.2022.
//

import UIKit
class MainTabBarController: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let searchVC = SearchViewController()
        let libratyVC = ViewController()
        tabBar.tintColor = #colorLiteral(red: 0.9613514543, green: 0.2925723493, blue: 0.7152232528, alpha: 1)
    
     
        
        viewControllers = [
            generateViewController(rootViewControoler: searchVC, image: UIImage(named: "Search1"), title: "Search"),  generateViewController(rootViewControoler: libratyVC, image: UIImage(named: "Library1"), title: "Library")
        ]
        
    }
    private func generateViewController(rootViewControoler: UIViewController, image: UIImage?, title: String) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewControoler)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        rootViewControoler.navigationItem.title = title
        navigationVC.navigationBar.prefersLargeTitles = true
        return navigationVC
    }
}
