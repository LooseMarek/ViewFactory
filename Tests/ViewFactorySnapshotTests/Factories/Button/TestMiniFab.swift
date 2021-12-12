//
//  TestMiniFab.swift
//
//
//  Created by Marek Loose on 12/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Button_Test {
    
    func testMiniFab_WhenDefault_ShouldHaveFixedHeight() {
        // Given
        let frame = CGRect(x: 0, y: 0, width: 32.0, height: 32.0)
        
        // When
        let button = buttonFactory.miniFab()
        button.frame = frame
        button.setImage(UIImage(systemName: "pencil"), for: .normal)
        
        // Then
        assertSnapshot(matching: button, as: .image)
    }
    
    func testMiniFab_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColor() {
        // Given
        let frame = CGRect(x: 0, y: 0, width: 32.0, height: 32.0)
        buttonFactory = ButtonFactory(constraintHelper: constraintHelper, gradientHelper: gradientHelper, viewFactoryColor: MockViewFactoryColor())
        
        // When
        let button = buttonFactory.miniFab()
        button.frame = frame
        button.setImage(UIImage(systemName: "pencil"), for: .normal)

        // Then
        assertSnapshot(matching: button, as: .image)
    }
}
