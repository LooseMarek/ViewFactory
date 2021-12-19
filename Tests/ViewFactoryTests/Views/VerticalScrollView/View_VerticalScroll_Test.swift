//
//  View_VerticalScroll_Test.swift
//  
//
//  Created by Marek Loose on 19/12/2021.
//

import XCTest

@testable import ViewFactory

class View_VerticalScroll_Test: XCTestCase {
    
    var constraintHelper: ConstraintHelper!
    var mockConstraintHelper: MockConstraintHelper!

    override func setUp() {
        super.setUp()
                
        constraintHelper = ConstraintHelper()
        mockConstraintHelper = MockConstraintHelper()
    }

    override func tearDown() {
        constraintHelper = nil
        mockConstraintHelper = nil
                
        super.tearDown()
    }
}
