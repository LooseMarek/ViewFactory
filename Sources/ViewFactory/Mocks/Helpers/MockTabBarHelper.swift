//
//  MockTabBarHelper.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 06/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public final class MockTabBarHelper: TabBarHelperProtocol {
    
    public var viewFactoryColor: ViewFactoryColorProtocol = DefaultViewFactoryColor()
    
    public var styleCallsCount = 0
    
    public var mockTabBar: UITabBar?
    
    public init() {}
    
    public func style(_ tabBar: UITabBar) {
        styleCallsCount += 1
        mockTabBar = tabBar
    }
}
