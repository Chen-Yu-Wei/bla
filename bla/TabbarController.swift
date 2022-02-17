//
//  TabbarController.swift
//  bla
//
//  Created by 陳昱維 on 2022/2/9.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let IndexVC = IndexViewController()
        let MemberVC = MemberViewController()
        let StoreVC = StoreViewController()
        let ARVC = ARViewController()
        
        //Tabbar icno
        IndexVC.tabBarItem.image = UIImage(systemName: "house")
        MemberVC.tabBarItem.image = UIImage(systemName: "person.fill")
        StoreVC.tabBarItem.image = UIImage(systemName: "fork.knife")
        ARVC.tabBarItem.image = UIImage(systemName: "tortoise.fill")
        
        //Tabbar 文字
        IndexVC.title = "首頁"
        MemberVC.title = "會員"
        StoreVC.title = "商店"
        ARVC.title = "手作"
        
        self.tabBar.isTranslucent = false //預設半透明關掉
        self.tabBar.barTintColor = "#99C5B5".hexColor
        self.tabBar.tintColor =  "#4E5166".hexColor//字體顏色
        self.tabBar.unselectedItemTintColor = "#706C61".hexColor
        
        if #available(iOS 13, *){
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = "#99C5B5".hexColor
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: "#706C61".hexColor]
            appearance.stackedLayoutAppearance.normal.iconColor = "#706C61".hexColor
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        
        setViewControllers([IndexVC, StoreVC, ARVC, MemberVC], animated: false)
        
    }


}
