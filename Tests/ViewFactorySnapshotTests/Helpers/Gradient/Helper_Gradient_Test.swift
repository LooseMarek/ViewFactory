//
//  Helper_Gradient_Test.swift
//  
//
//  Created by Marek Loose on 28/12/2021.
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
