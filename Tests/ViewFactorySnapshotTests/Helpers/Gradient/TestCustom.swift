//
//  TestCustom.swift
//  
//
//  Created by Marek Loose on 28/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Helper_Gradient_Test {
    
    // Default
    
    func testCustom_WhenGradientLayerIsDefault_ShouldAddRadialGradientFromTopLeftToBottomRight() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, colors: [firstCgColor, lastCgColor])

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    // More Colors
    
    func testCustom_WhenGradientLayerHaveMultipleColors_ShouldAddGradientWithAllColors() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let secondCgColor: CGColor = UIColor.yellow.cgColor
        let thirdCgColor: CGColor = UIColor.green.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, colors: [firstCgColor, secondCgColor, thirdCgColor, lastCgColor])

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    // Corner Radius
    
    func testCustom_WhenCornerRadiusSet_ShouldAddCornerRadiusToGradientLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, cornerRadius: 16.0, colors: [firstCgColor, lastCgColor])

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    // Start Point
    
    func testCustom_WhenStartPointSetToTopCenter_ShouldAddGradientLayerFromTopCenter() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, start: .topCenter, colors: [firstCgColor, lastCgColor])

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    func testCustom_WhenStartPointSetToCenter_ShouldAddGradientLayerFromCenter() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, start: .center, colors: [firstCgColor, lastCgColor])

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    // Type
    
    func testCustom_WhenTypeRadial_ShouldAddRadialGradientLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, colors: [firstCgColor, lastCgColor], type: .radial)

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    func testCustom_WhenTypeAxial_ShouldAddAxialGradientLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, colors: [firstCgColor, lastCgColor], type: .axial)

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    func testCustom_WhenTypeConic_ShouldAddConicGradientLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, colors: [firstCgColor, lastCgColor], type: .conic)

        // Then
        assertSnapshot(matching: view, as: .image)
    }
    
    // Mix
    
    func testCustom_WhenMixed_ShouldCustomGradientLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 100.0))
        let firstCgColor: CGColor = UIColor.red.cgColor
        let secondCgColor: CGColor = UIColor.yellow.cgColor
        let lastCgColor: CGColor = UIColor.blue.cgColor
        
        // When
        try! gradientHelper.custom(for: view, cornerRadius: 16.0, start: .center, colors: [firstCgColor, secondCgColor, lastCgColor], type: .axial)

        // Then
        assertSnapshot(matching: view, as: .image)
    }
}

