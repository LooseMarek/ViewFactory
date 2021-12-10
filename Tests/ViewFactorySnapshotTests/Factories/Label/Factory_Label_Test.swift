//
//  Factory_Label_Test.swift
//  
//
//  Created by Marek Loose on 10/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

class Factory_Label_Test: XCTestCase {
    
    // TODO: Fix size for child factories but use device sizes for Stack, Scroll and Table Factory
    var testFrameIphone8: CGRect!
    var testShortText: String!
    var testLongText: String!
    
    var labelFactory: LabelFactory!
    
    override func setUp() {
        super.setUp()
        
        testFrameIphone8 = CGRect(x: 0, y: 0, width: ViewImageConfig.iPhone8.size!.width, height: 50.0)
        testShortText = "Example short text"
        testLongText = "This is the example long text which may or may not go into multiple lines"
        
        labelFactory = LabelFactory(viewFactoryColor: DefaultViewFactoryColor())
    }

    override func tearDown() {
        testFrameIphone8 = nil
        testShortText = nil
        testLongText = nil
        
        labelFactory = nil
                
        super.tearDown()
    }
}
