//
//  NavigationBarHelper.swift
//  ViewFactory
//
//  Created by Marek Loose on 25/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import Foundation
import UIKit

public protocol NavigationBarHelperProtocol {
    var viewFactoryColor: ViewFactoryColorProtocol { get }

     func style(_ navigationBar: UINavigationBar)
}

public final class NavigationBarHelper: NavigationBarHelperProtocol {
    
    public var viewFactoryColor: ViewFactoryColorProtocol
    
    public init(viewFactoryColor: ViewFactoryColorProtocol) {
        self.viewFactoryColor = viewFactoryColor
    }
    
    public func style(_ navigationBar: UINavigationBar) {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        navigationBar.titleTextAttributes = [.foregroundColor: viewFactoryColor.onNavigationBar]
        navigationBar.barStyle = .black
        navigationBar.tintColor = viewFactoryColor.onNavigationBar
        navigationBar.barTintColor = viewFactoryColor.onNavigationBar
    }
}
