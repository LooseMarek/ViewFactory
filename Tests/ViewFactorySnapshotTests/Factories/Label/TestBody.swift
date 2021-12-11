//
//  TestBody.swift
//
//
//  Created by Marek Loose on 10/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Label_Test {
    
    func testBody_WhenShortText_ShouldUseDefaultFontSize() {
        // Given
        
        // When
        let label = labelFactory.body()
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testBody_WhenLongText_ShouldGoIntoMultipleLines() {
        // Given
        
        // When
        let label = labelFactory.body()
        label.frame = testFrameIphone8
        label.text = testMultilineText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testBody_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColor() {
        // Given
        labelFactory = LabelFactory(viewFactoryColor: MockViewFactoryColor())
        
        // When
        let label = labelFactory.body()
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testBody_WhenAlignmentSetToRight_ShouldPlaceLabelOnRight() {
        // Given
        
        // When
        let label = labelFactory.body(alignment: .right)
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testBody_WhenAlignmentSetToCenter_ShouldPlaceLabelCenterHorizontally() {
        // Given
        
        // When
        let label = labelFactory.body(alignment: .center)
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
}
