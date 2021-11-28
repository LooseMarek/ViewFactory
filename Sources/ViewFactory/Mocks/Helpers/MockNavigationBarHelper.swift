//
//  MockNavigationBarHelper.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 31/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class MockNavigationBarHelper: NavigationBarHelperProtocol {
    public var viewFactoryColor: ViewFactoryColorProtocol = DefaultViewFactoryColor()
    
    public var styleCallsCount: Int = 0
    
    public var mockNavigationBar: UINavigationBar?
    
    public init() {}
    
    public func style(_ navigationBar: UINavigationBar) {
        styleCallsCount += 1
        
        mockNavigationBar = navigationBar
    }
}
