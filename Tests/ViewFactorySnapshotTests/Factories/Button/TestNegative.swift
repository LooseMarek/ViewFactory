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
        let frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: 40.0)
        
        // When
        let button = buttonFactory.negative()
        button.frame = frame
        button.setTitle(testButtonText, for: .normal)
        
        _ = constraintHelper.setWidth(for: button, at: testIphone8Width)
        
        // Then
        assertSnapshot(matching: button, as: .image)
    }
    
    func testNegative_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColor() {
        // Given
        let frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: 40.0)
        buttonFactory = ButtonFactory(constraintHelper: constraintHelper, gradientHelper: gradientHelper, viewFactoryColor: MockViewFactoryColor())
        
        // When
        let button = buttonFactory.negative()
        button.frame = frame
        button.setTitle(testButtonText, for: .normal)
        
        _ = constraintHelper.setWidth(for: button, at: testIphone8Width)

        // Then
        assertSnapshot(matching: button, as: .image)
    }
}
