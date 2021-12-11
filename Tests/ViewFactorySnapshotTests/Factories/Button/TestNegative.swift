//
//  TestNegative.swift
//  
//
//  Created by Marek Loose on 11/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Button_Test {
    
    func testNegative_WhenDefault_ShouldHaveFixedHeight() {
        // Given
        
        // When
        let button = buttonFactory.negative()
        button.frame = testFrameIphone8
        button.setTitle(testButtonText, for: .normal)
        
        _ = constraintHelper.setWidth(for: button, at: testWidth)
        
        // Then
        assertSnapshot(matching: button, as: .image)
    }
    
    func testNegative_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColor() {
        // Given
        buttonFactory = ButtonFactory(constraintHelper: constraintHelper, gradientHelper: gradientHelper, viewFactoryColor: MockViewFactoryColor())
        
        // When
        let button = buttonFactory.negative()
        button.frame = testFrameIphone8
        button.setTitle(testButtonText, for: .normal)
        
        _ = constraintHelper.setWidth(for: button, at: testWidth)

        // Then
        assertSnapshot(matching: button, as: .image)
    }
}
