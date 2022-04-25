//
//  ViewController.swift
//  NetflixClone
//
//  Created by Tuncer Şahinci on 8.04.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()

    let homeVC = UINavigationController(rootViewController: HomeViewController())
    let newAndHotVC = UINavigationController(rootViewController: NewAndHotViewController())
    let searchVC = UINavigationController(rootViewController: NewAndHotViewController())
    let downloadsVC = UINavigationController(rootViewController: NewAndHotViewController())
    
    homeVC.title = "Home"
    newAndHotVC.title = "New & Hot"
    searchVC.title = "Search"
    downloadsVC.title = "Downloads"
    
    homeVC.tabBarItem.image = UIImage(systemName: "house")
    newAndHotVC.tabBarItem.image = UIImage(systemName: "play.circle")
    searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
    downloadsVC.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
    
   tabBar.tintColor = .label

    setViewControllers([homeVC, newAndHotVC, searchVC, downloadsVC], animated: true)
  }
}
