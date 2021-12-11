//
//  TestHint.swift
//
//
//  Created by Marek Loose on 10/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Label_Test {
    
    func testHint_WhenShortText_ShouldUseDefaultFontSize() {
        // Given
        
        // When
        let label = labelFactory.hint()
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHint_WhenLongText_ShouldGoIntoMultipleLines() {
        // Given
        
        // When
        let label = labelFactory.hint()
        label.frame = testFrameIphone8
        label.text = testMultilineText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHint_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColor() {
        // Given
        labelFactory = LabelFactory(viewFactoryColor: MockViewFactoryColor())
        
        // When
        let label = labelFactory.hint()
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHint_WhenAlignmentSetToRight_ShouldPlaceLabelOnRight() {
        // Given
        
        // When
        let label = labelFactory.hint(alignment: .right)
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHint_WhenAlignmentSetToCenter_ShouldPlaceLabelCenterHorizontally() {
        // Given
        
        // When
        let label = labelFactory.hint(alignment: .center)
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
}
