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
    
    var testFrameIphone8: CGRect!
    var testShortText: String!
    var testLongText: String!
    var testLongTextForSmallFont: String!
    var testMultilineText: String!
    
    var labelFactory: LabelFactory!
    
    override func setUp() {
        super.setUp()
        
        testFrameIphone8 = CGRect(x: 0, y: 0, width: ViewImageConfig.iPhone8.size!.width, height: 50.0)
        testShortText = "Example short text"
        testLongText = "This is the example long text which should adjust font size"
        testLongTextForSmallFont = "This is the example long text for the small font size which should adjust font size even more"
        testMultilineText = "This is the example very long text which should go to multiple lines. This is the example very long text which should go to multiple lines."
        
        labelFactory = LabelFactory(viewFactoryColor: DefaultViewFactoryColor())
    }

    override func tearDown() {
        testFrameIphone8 = nil
        testShortText = nil
        testLongText = nil
        testLongTextForSmallFont = nil
        testMultilineText = nil
        
        labelFactory = nil
                
        super.tearDown()
    }
}
