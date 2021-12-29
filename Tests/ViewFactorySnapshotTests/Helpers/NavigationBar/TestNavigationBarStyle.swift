//
//  TestNavigationBarStyle.swift
//  
//
//  Created by Marek Loose on 29/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Helper_NavigationBar_Test {
    
    func testStyle_WhenSetOnIphoneSe_ShouldStyleNavigationBar() {
        // Given
        let viewImageConfig: ViewImageConfig = .iPhoneSe
        
        let viewController = UIViewController()
        viewController.view.frame = CGRect(x: 0.0, y: 0.0, width: viewImageConfig.size!.width, height: viewImageConfig.size!.height)
        viewController.view.backgroundColor = .systemBlue
        
        let navigationBar = UINavigationBar(frame: CGRect(x: 0.0, y: 0.0, width: viewImageConfig.size!.width, height: 44))
        let navItem = UINavigationItem(title: "Navbar Title")
        navigationBar.setItems([navItem], animated: false)
        navItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: nil)
        navItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
        
        viewController.view.addSubview(navigationBar)
        
        // When
        navigationBarHelper.style(navigationBar)

        // Then
        assertSnapshot(matching: viewController, as: .image)
    }
    
    func testStyle_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultNavigationBarColor() {
        // Given
        navigationBarHelper = NavigationBarHelper(viewFactoryColor: MockViewFactoryColor())
        let viewImageConfig: ViewImageConfig = .iPhoneSe
        
        let viewController = UIViewController()
        viewController.view.frame = CGRect(x: 0.0, y: 0.0, width: viewImageConfig.size!.width, height: viewImageConfig.size!.height)
        viewController.view.backgroundColor = .systemBlue
        
        let navigationBar = UINavigationBar(frame: CGRect(x: 0.0, y: 0.0, width: viewImageConfig.size!.width, height: 44))
        let navItem = UINavigationItem(title: "Navbar Title")
        navigationBar.setItems([navItem], animated: false)
        navItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: nil)
        navItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
        
        viewController.view.addSubview(navigationBar)
        
        // When
        navigationBarHelper.style(navigationBar)

        // Then
        assertSnapshot(matching: viewController, as: .image)
    }
}
