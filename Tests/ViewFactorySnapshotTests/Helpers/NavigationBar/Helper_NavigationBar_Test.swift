//
//  Helper_NavigationBar_Test.swift
//  
//
//  Created by Marek Loose on 29/12/2021.
//

import XCTest

@testable import ViewFactory

class Helper_NavigationBar_Test: XCTestCase {
    
    var navigationBarHelper: NavigationBarHelper!

    override func setUp() {
        super.setUp()
                
        navigationBarHelper = NavigationBarHelper(viewFactoryColor: DefaultViewFactoryColor())
    }

    override func tearDown() {
        navigationBarHelper = nil
                
        super.tearDown()
    }
}
