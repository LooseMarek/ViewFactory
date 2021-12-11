//
//  TestHeader.swift
//  
//
//  Created by Marek Loose on 10/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Label_Test {
    
    func testHeader_WhenShortText_ShouldUseDefaultFontSize() {
        // Given
        
        // When
        let label = labelFactory.header()
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHeader_WhenLongText_ShouldAdjustFontSize() {
        // Given
        
        // When
        let label = labelFactory.header()
        label.frame = testFrameIphone8
        label.text = testLongText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHeader_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColor() {
        // Given
        labelFactory = LabelFactory(viewFactoryColor: MockViewFactoryColor())
        
        // When
        let label = labelFactory.header()
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHeader_WhenAlignmentSetToRight_ShouldPlaceLabelOnRight() {
        // Given
        
        // When
        let label = labelFactory.header(alignment: .right)
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHeader_WhenAlignmentSetToCenter_ShouldPlaceLabelCenterHorizontally() {
        // Given
        
        // When
        let label = labelFactory.header(alignment: .center)
        label.frame = testFrameIphone8
        label.text = testShortText
        label.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
}
