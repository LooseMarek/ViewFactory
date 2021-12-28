//
//  TestDiagonal.swift
//
//  Created by Marek Loose on 28/12/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Helper_Gradient_Test {
    
    func testDiagonal_WhenGradientLayerWithDefaultNameNotExist_ShouldAddGradientLayerToView() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let colorTop: UIColor = .red
        let colorBottom: UIColor = .blue
        
        // When
        try! gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom)

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    func testDiagonal_WhenThereIsAnotherGradientLayer_ShouldAddGradientLayerToViewOnTopAndCoverPreviousLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstLayerName: String = "firstTestGradientLayer"
        let firstColorTop: UIColor = .red
        let firstColorBottom: UIColor = .blue
        let secondLayerName: String = "secondTestGradientLayer"
        let secondColorTop: UIColor = .yellow
        let secondColorBottom: UIColor = .green

        try! gradientHelper.diagonal(for: view, colorTop: firstColorTop, colorBottom: firstColorBottom, layerName: firstLayerName)

        // When
        try! gradientHelper.diagonal(for: view, colorTop: secondColorTop, colorBottom: secondColorBottom, layerName: secondLayerName)

        // Then
        assertSnapshot(matching: view, as: .image)
    }
}
