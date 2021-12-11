//
//  TestText.swift
//
//
//  Created by Marek Loose on 11/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Input_Test {
    
    func testText_WhenEmpty_ShouldDisplayPlaceholder() {
        // Given
        
        // When
        let input = inputFactory.text()
        input.frame = testFrameIphone8
        input.placeholder = testPlaceholderText
        
        // Then
        assertSnapshot(matching: input, as: .image)
    }
    
    func testText_WhenHaveInput_ShouldDisplayInput() {
        // Given
        
        // When
        let input = inputFactory.text()
        input.frame = testFrameIphone8
        input.placeholder = testPlaceholderText
        input.text = testTextInputText
        
        // Then
        assertSnapshot(matching: input, as: .image)
    }
    
    func testText_WhenEmptyAndColorChangeThroughViewFactoryColor_ShouldChangeDefaultColor() {
        // Given
        inputFactory = InputFactory(constraintHelper: constraintHelper, viewFactoryColor: MockViewFactoryColor())
        
        // When
        let input = inputFactory.text()
        input.frame = testFrameIphone8
        input.placeholder = testPlaceholderText
        
        // Then
        assertSnapshot(matching: input, as: .image)
    }
    
    func testText_WhenHaveInputAndColorChangeThroughViewFactoryColor_ShouldChangeDefaultColor() {
        // Given
        inputFactory = InputFactory(constraintHelper: constraintHelper, viewFactoryColor: MockViewFactoryColor())
        
        // When
        let input = inputFactory.text()
        input.frame = testFrameIphone8
        input.placeholder = testPlaceholderText
        input.text = testTextInputText
        
        // Then
        assertSnapshot(matching: input, as: .image)
    }
}
