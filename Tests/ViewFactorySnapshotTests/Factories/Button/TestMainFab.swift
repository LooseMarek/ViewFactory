//
//  TestMainFab.swift
//
//
//  Created by Marek Loose on 12/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Button_Test {
    
    func testMainFab_WhenDefault_ShouldHaveFixedHeight() {
        // Given
        let frame = CGRect(x: 0, y: 0, width: 40.0, height: 40.0)
        
        // When
        let button = buttonFactory.mainFab()
        button.frame = frame
        button.setImage(UIImage(systemName: "pencil"), for: .normal)
        
        // Then
        assertSnapshot(matching: button, as: .image)
    }
    
    func testMainFab_WhenColorChangeThroughViewFactoryColor_ShouldChangeDefaultLabelColor() {
        // Given
        let frame = CGRect(x: 0, y: 0, width: 40.0, height: 40.0)
        buttonFactory = ButtonFactory(constraintHelper: constraintHelper, gradientHelper: gradientHelper, viewFactoryColor: MockViewFactoryColor())
        
        // When
        let button = buttonFactory.mainFab()
        button.frame = frame
        button.setImage(UIImage(systemName: "pencil"), for: .normal)

        // Then
        assertSnapshot(matching: button, as: .image)
    }
}
