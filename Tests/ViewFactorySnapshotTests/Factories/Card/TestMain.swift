//
//  TestMain.swift
//  
//
//  Created by Marek Loose on 29/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Card_Test {
    
    func testMain_WhenDefault_ShouldUseDefaultColors() {
        // Given
        let label1 = labelFactory.header()
        label1.text = "Header"
        let label2 = labelFactory.body()
        label2.text = "This is the example very long text which should go to multiple lines. This is the example very long text which should go to multiple lines."
        
        let stack = stackFactory.vertical(views: [label1, label2])
        
        // When
        let card = cardFactory.main(stack: stack)        
        _ = constraintHelper.setWidth(for: card, at: testFrameIphone8.width)
        
        // Then
        assertSnapshot(matching: card, as: .image)
    }
    
    func testMain_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColors() {
        // Given
        viewFactoryColor = MockViewFactoryColor()
        cardFactory = CardFactory(constraintHelper: constraintHelper, labelFactory: labelFactory, inputFactory: inputFactory, buttonFactory: buttonFactory, stackFactory: stackFactory, viewFactoryColor: viewFactoryColor)
        
        let label1 = labelFactory.header()
        label1.text = "Header"
        let label2 = labelFactory.body()
        label2.text = "This is the example very long text which should go to multiple lines. This is the example very long text which should go to multiple lines."
        
        let stack = stackFactory.vertical(views: [label1, label2])
        
        // When
        let card = cardFactory.main(stack: stack)
        _ = constraintHelper.setWidth(for: card, at: testFrameIphone8.width)
        
        // Then
        assertSnapshot(matching: card, as: .image)
    }
}
