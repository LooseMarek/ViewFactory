//
//  Helper_TabBar_Test.swift
//  
//
//  Created by Marek Loose on 29/12/2021.
//

import XCTest

@testable import ViewFactory

class Helper_TabBar_Test: XCTestCase {
    
    var tabBarHelper: TabBarHelper!

    override func setUp() {
        super.setUp()
                
        tabBarHelper = TabBarHelper(viewFactoryColor: DefaultViewFactoryColor())
    }

    override func tearDown() {
        tabBarHelper = nil
                
        super.tearDown()
    }
}
