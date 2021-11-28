//
//  PageFactory.swift
//  ViewFactory
//
//  Created by Marek Loose on 15/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import Foundation
import UIKit

public protocol TabBarHelperProtocol {
    var viewFactoryColor: ViewFactoryColorProtocol { get }

    func style(_ tabBar: UITabBar)
}

public class TabBarHelper: TabBarHelperProtocol {
    
    public var viewFactoryColor: ViewFactoryColorProtocol
    
    public init(viewFactoryColor: ViewFactoryColorProtocol) {
        self.viewFactoryColor = viewFactoryColor
    }
    
    public func style(_ tabBar: UITabBar) {
        tabBar.tintColor = viewFactoryColor.onTabBarActive
        tabBar.unselectedItemTintColor = viewFactoryColor.onTabBar
        tabBar.barTintColor = viewFactoryColor.tabBar
        tabBar.isTranslucent = false
    }
}
