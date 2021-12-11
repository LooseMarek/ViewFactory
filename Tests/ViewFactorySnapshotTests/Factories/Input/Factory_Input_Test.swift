//
//  Factory_Input_Test.swift
//
//
//  Created by Marek Loose on 11/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

class Factory_Input_Test: XCTestCase {
    
    var testFrameIphone8: CGRect!
    var testPlaceholderText: String!
    var testNumberInputText: String!
    var testTextInputText: String!
    
    var constraintHelper: ConstraintHelperProtocol!
    
    var inputFactory: InputFactory!
    
    override func setUp() {
        super.setUp()
        
        testFrameIphone8 = CGRect(x: 0, y: 0, width: ViewImageConfig.iPhone8.size!.width, height: 48.0)
        testPlaceholderText = "Example placeholder"
        testNumberInputText = "1321.22"
        testTextInputText = "Example text input"
        
        constraintHelper = ConstraintHelper()
        
        inputFactory = InputFactory(constraintHelper: constraintHelper, viewFactoryColor: DefaultViewFactoryColor())
    }

    override func tearDown() {
        testFrameIphone8 = nil
        testPlaceholderText = nil
        testNumberInputText = nil
        testTextInputText = nil

        constraintHelper = nil
        
        inputFactory = nil
                
        super.tearDown()
    }
}
