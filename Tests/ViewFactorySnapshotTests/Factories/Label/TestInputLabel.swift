//
//  TestHeaderShortText.swift
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
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
}
