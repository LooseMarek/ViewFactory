//
//  TestInputLabelShortText.swift
//
//
//  Created by Marek Loose on 10/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Label_Test {
    
    func testInputLabel_WhenShortText_ShouldUseDefaultFontSize() {
        // Given
        
        // When
        let label = labelFactory.inputLabel()
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testInputLabel_WhenLongText_ShouldAdjustFontSize() {
        // Given
        
        // When
        let label = labelFactory.inputLabel()
        label.frame = testFrameIphone8
        label.text = testLongTextForSmallFont
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testInputLabel_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColor() {
        // Given
        labelFactory = LabelFactory(viewFactoryColor: MockViewFactoryColor())
        
        // When
        let label = labelFactory.inputLabel()
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testInputLabel_WhenAlignmentSetToRight_ShouldPlaceLabelOnRight() {
        // Given
        
        // When
        let label = labelFactory.inputLabel(alignment: .right)
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testInputLabel_WhenAlignmentSetToCenter_ShouldPlaceLabelCenterHorizontally() {
        // Given
        
        // When
        let label = labelFactory.inputLabel(alignment: .center)
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
}
