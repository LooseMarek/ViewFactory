//
//  Factory_Button_Test.swift
//  
//
//  Created by Marek Loose on 11/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

class Factory_Button_Test: XCTestCase {
    
    var testIphone8Width: CGFloat!
    var testButtonText: String!
    
    var constraintHelper: ConstraintHelperProtocol!
    var gradientHelper: GradientHelperProtocol!
    
    var buttonFactory: ButtonFactory!
    
    override func setUp() {
        super.setUp()
        
        testIphone8Width = ViewImageConfig.iPhone8.size!.width
        testButtonText = "Example button"
        
        constraintHelper = ConstraintHelper()
        gradientHelper = GradientHelper()
        
        buttonFactory = ButtonFactory(constraintHelper: constraintHelper, gradientHelper: gradientHelper, viewFactoryColor: DefaultViewFactoryColor())
    }

    override func tearDown() {
        testIphone8Width = nil
        testButtonText = nil

        constraintHelper = nil
        gradientHelper = nil
        
        buttonFactory = nil
                
        super.tearDown()
    }
}
