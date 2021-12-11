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
    
    var testWidth: CGFloat!
    var testFrameIphone8: CGRect!
    var testButtonText: String!
    
    var constraintHelper: ConstraintHelperProtocol!
    var gradientHelper: GradientHelperProtocol!
    
    var buttonFactory: ButtonFactory!
    
    override func setUp() {
        super.setUp()
        
        testWidth = ViewImageConfig.iPhone8.size!.width
        testFrameIphone8 = CGRect(x: 0, y: 0, width: testWidth, height: 40.0)
        testButtonText = "Example button"
        
        constraintHelper = ConstraintHelper()
        gradientHelper = GradientHelper()
        
        buttonFactory = ButtonFactory(constraintHelper: constraintHelper, gradientHelper: gradientHelper, viewFactoryColor: DefaultViewFactoryColor())
    }

    override func tearDown() {
        testWidth = nil
        testFrameIphone8 = nil
        testButtonText = nil

        constraintHelper = nil
        gradientHelper = nil
        
        buttonFactory = nil
                
        super.tearDown()
    }
}
