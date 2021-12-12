//
//  Factory_Stack_Test.swift
//
//
//  Created by Marek Loose on 12/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

class Factory_Stack_Test: XCTestCase {
    
    var testIphone8Width: CGFloat!
    var testHeight: CGFloat!
    
    var constraintHelper: ConstraintHelperProtocol!
    
    var stackFactory: StackFactory!
    
    override func setUp() {
        super.setUp()
        
        testIphone8Width = ViewImageConfig.iPhone8.size!.width
        testHeight = 30.0
        
        constraintHelper = ConstraintHelper()
        
        stackFactory = StackFactory(constraintHelper: constraintHelper)
    }

    override func tearDown() {
        testIphone8Width = nil
        testHeight = nil

        constraintHelper = nil
        
        stackFactory = nil
                
        super.tearDown()
    }
}
