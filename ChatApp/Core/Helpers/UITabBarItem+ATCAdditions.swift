//
//  UITabBarItem+Additions.swift
//  ShoppingApp
//
//  Demo App - Veni on 8/29/17.
  
//

import UIKit

extension UITabBarItem {

    func tabBarWithNoTitle() -> UITabBarItem {
        self.imageInsets = UIEdgeInsets(top: 6, left: 0,bottom: -6, right: 0)
        self.titlePositionAdjustment = UIOffset(horizontal: 0,vertical: 100)
        return self
    }
}
