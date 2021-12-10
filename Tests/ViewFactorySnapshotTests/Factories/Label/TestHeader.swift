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
    
    func testHeader_WhenShortText_OnIphoneSe() {
        // Given
        
        // When
        let label = labelFactory.header()
        label.frame = CGRect(x: 0, y: 0, width: ViewImageConfig.iPhoneSe.size!.width, height: 50.0)
        label.text = testShortText
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
    
    func testHeader_WhenLongText_OnIphoneSe() {
        // Given
        
        // When
        let label = labelFactory.header()
        label.frame = CGRect(x: 0, y: 0, width: ViewImageConfig.iPhoneSe.size!.width, height: 50.0)
        label.text = testLongText
        
        // Then
        assertSnapshot(matching: label, as: .image)
    }
}
