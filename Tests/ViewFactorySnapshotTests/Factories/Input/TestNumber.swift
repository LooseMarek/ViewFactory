//
//  TestNumber.swift
//  
//
//  Created by Marek Loose on 11/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Input_Test {
    
    func testNumber_WhenEmpty_ShouldDisplayPlaceholder() {
        // Given
        
        // When
        let input = inputFactory.number()
        input.frame = testFrameIphone8
        input.placeholder = testPlaceholderText
        
        // Then
        assertSnapshot(matching: input, as: .image)
    }
    
    func testNumber_WhenHaveInput_ShouldDisplayInput() {
        // Given
        
        // When
        let input = inputFactory.number()
        input.frame = testFrameIphone8
        input.placeholder = testPlaceholderText
        input.text = testNumberInputText
        
        // Then
        assertSnapshot(matching: input, as: .image)
    }
    
    func testNumber_WhenEmptyAndColorChangeThroughViewFactoryColor_ShouldChangeDefaultColor() {
        // Given
        inputFactory = InputFactory(constraintHelper: constraintHelper, viewFactoryColor: MockViewFactoryColor())
        
        // When
        let input = inputFactory.number()
        input.frame = testFrameIphone8
        input.placeholder = testPlaceholderText
        
        // Then
        assertSnapshot(matching: input, as: .image)
    }
    
    func testNumber_WhenHaveInputAndColorChangeThroughViewFactoryColor_ShouldChangeDefaultColor() {
        // Given
        inputFactory = InputFactory(constraintHelper: constraintHelper, viewFactoryColor: MockViewFactoryColor())
        
        // When
        let input = inputFactory.number()
        input.frame = testFrameIphone8
        input.placeholder = testPlaceholderText
        input.text = testNumberInputText
        
        // Then
        assertSnapshot(matching: input, as: .image)
    }
}
