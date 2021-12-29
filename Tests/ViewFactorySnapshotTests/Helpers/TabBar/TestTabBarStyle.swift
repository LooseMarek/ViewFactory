//
//  TestTabBarStyle.swift
//  
//
//  Created by Marek Loose on 29/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Helper_TabBar_Test {
    
    func testStyle_WhenSetOnIphoneSe_ShouldStyleTabBar() {
        // Given
        let viewImageConfig: ViewImageConfig = .iPhoneSe
        
        let viewController1 = UIViewController()
        viewController1.view.frame = CGRect(x: 0.0, y: 0.0, width: viewImageConfig.size!.width, height: viewImageConfig.size!.height)
        viewController1.view.backgroundColor = .systemBlue
        
        let tabBarItem1 = UITabBarItem()
        tabBarItem1.title = "Left"
        tabBarItem1.image = UIImage(systemName: "bitcoinsign.circle")
        viewController1.tabBarItem = tabBarItem1
        
        let viewController2 = UIViewController()
        viewController2.view.frame = CGRect(x: 0.0, y: 0.0, width: viewImageConfig.size!.width, height: viewImageConfig.size!.height)
        viewController2.view.backgroundColor = .systemBlue
        
        let tabBarItem2 = UITabBarItem()
        tabBarItem2.title = "Right"
        tabBarItem2.image = UIImage(systemName: "chart.line.uptrend.xyaxis")
        viewController2.tabBarItem = tabBarItem2
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [viewController1, viewController2]
        
        // When
        tabBarHelper.style(tabBarController.tabBar)

        // Then
        assertSnapshot(matching: tabBarController, as: .image)
    }
    
    func testStyle_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultTabBarColors() {
        // Given
        tabBarHelper = TabBarHelper(viewFactoryColor: MockViewFactoryColor())
        
        let viewImageConfig: ViewImageConfig = .iPhoneSe
        
        let viewController1 = UIViewController()
        viewController1.view.frame = CGRect(x: 0.0, y: 0.0, width: viewImageConfig.size!.width, height: viewImageConfig.size!.height)
        viewController1.view.backgroundColor = .systemBlue
        
        let tabBarItem1 = UITabBarItem()
        tabBarItem1.title = "Left"
        tabBarItem1.image = UIImage(systemName: "bitcoinsign.circle")
        viewController1.tabBarItem = tabBarItem1
        
        let viewController2 = UIViewController()
        viewController2.view.frame = CGRect(x: 0.0, y: 0.0, width: viewImageConfig.size!.width, height: viewImageConfig.size!.height)
        viewController2.view.backgroundColor = .systemBlue
        
        let tabBarItem2 = UITabBarItem()
        tabBarItem2.title = "Right"
        tabBarItem2.image = UIImage(systemName: "chart.line.uptrend.xyaxis")
        viewController2.tabBarItem = tabBarItem2
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [viewController1, viewController2]
        
        // When
        tabBarHelper.style(tabBarController.tabBar)

        // Then
        assertSnapshot(matching: tabBarController, as: .image)
    }
}
