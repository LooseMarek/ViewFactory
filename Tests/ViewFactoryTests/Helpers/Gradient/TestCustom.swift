//
//  TestCustom.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 30/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import XCTest

@testable import ViewFactory

extension Helper_Gradient_Test {
    
    func testCustom_WhenGradientLayerWithDefaultNameExist_ShouldThrowError() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let firstCgColor: CGColor = UIColor.orange.cgColor
        let lastCgColor: CGColor = UIColor.red.cgColor
        
        try! gradientHelper.custom(for: view, colors: [firstCgColor, lastCgColor])

        // When / Then
        XCTAssertThrowsError(try gradientHelper.custom(for: view, colors: [firstCgColor, lastCgColor])) { error in
            XCTAssertEqual(error as! GradientErrorEnum, GradientErrorEnum.layerAlreadyExist)
        }
    }
    
    func testCustom_WhenGradientLayerWithDefaultNameNotExist_ShouldAddGradientLayerToView() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let firstCgColor: CGColor = UIColor.orange.cgColor
        let lastCgColor: CGColor = UIColor.red.cgColor
        
        // When
        try! gradientHelper.custom(for: view, colors: [firstCgColor, lastCgColor])

        // Then
        XCTAssertTrue(view.layer.sublayers?[0] is CAGradientLayer)
    }
    
    func testCustom_WhenGradientLayerWithSpecificNameExist_ShouldThrowError() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layerName: String = "testGradientLayer"
        let firstCgColor: CGColor = UIColor.orange.cgColor
        let lastCgColor: CGColor = UIColor.red.cgColor
        
        try! gradientHelper.custom(for: view, layerName: layerName, colors: [firstCgColor, lastCgColor])

        // When / Then
        XCTAssertThrowsError(try gradientHelper.custom(for: view, layerName: layerName, colors: [firstCgColor, lastCgColor])) { error in
            XCTAssertEqual(error as! GradientErrorEnum, GradientErrorEnum.layerAlreadyExist)
        }
    }
    
    func testCustom_WhenGradientLayerWithSpecificNameNotExist_ShouldAddGradientLayerToView() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layerName: String = "testGradientLayer"
        let firstCgColor: CGColor = UIColor.orange.cgColor
        let lastCgColor: CGColor = UIColor.red.cgColor
        
        // When
        try! gradientHelper.custom(for: view, layerName: layerName, colors: [firstCgColor, lastCgColor])

        // Then
        XCTAssertTrue(view.layer.sublayers?[0] is CAGradientLayer)
    }
    
    func testCustom_WhenThereIsAnotherGradientLayer_ShouldAddGradientLayerToView() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let firstLayerName: String = "firstTestGradientLayer"
        let secondLayerName: String = "secondTestGradientLayer"
        let firstCgColor: CGColor = UIColor.orange.cgColor
        let lastCgColor: CGColor = UIColor.red.cgColor
        
        try! gradientHelper.custom(for: view, layerName: firstLayerName, colors: [firstCgColor, lastCgColor])
        
        // When
        try! gradientHelper.custom(for: view, layerName: secondLayerName, colors: [lastCgColor, firstCgColor])

        // Then
        XCTAssertTrue(view.layer.sublayers?[0] is CAGradientLayer)
        XCTAssertTrue(view.layer.sublayers?[1] is CAGradientLayer)
    }
    
    func testCustom_WhenThereIsAnotherLayer_ShouldAddGradientLayerToViewAsFirstLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layer = CALayer()
        let layerName: String = "testLayer"
        layer.name = layerName
        view.layer.insertSublayer(layer, at: 0)
        
        let gradientLayerName: String = "TestGradientLayer"
        let firstCgColor: CGColor = UIColor.orange.cgColor
        let lastCgColor: CGColor = UIColor.red.cgColor
        
        // When
        try! gradientHelper.custom(for: view, layerName: gradientLayerName, colors: [firstCgColor, lastCgColor])

        // Then
        XCTAssertTrue(view.layer.sublayers?[0] is CAGradientLayer)
        XCTAssertFalse(view.layer.sublayers?[1] is CAGradientLayer)
    }
}
