//
//  Factory_Label_Test.swift
//  
//
//  Created by Marek Loose on 10/12/2021.
//

import XCTest

@testable import ViewFactory

class Factory_Label_Test: XCTestCase {
    
    var testShortText: String!
    var testLongText: String!
    
    var labelFactory: LabelFactory!
    
    override func setUp() {
        super.setUp()
        
        testShortText = "Example short text"
        testLongText = "This is the example long text which may or may not go into multiple lines"
        
        labelFactory = LabelFactory(viewFactoryColor: DefaultViewFactoryColor())
    }

    override func tearDown() {
        labelFactory = nil
        testShortText = nil
        testLongText = nil
                
        super.tearDown()
    }
}
