//
//  Helper_Gradient_Test.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 30/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import XCTest

@testable import ViewFactory

class Helper_Gradient_Test: XCTestCase {
    
    var gradientHelper: GradientHelper!

    override func setUp() {
        super.setUp()
                
        gradientHelper = GradientHelper()
    }

    override func tearDown() {
        gradientHelper = nil
                
        super.tearDown()
    }
}
