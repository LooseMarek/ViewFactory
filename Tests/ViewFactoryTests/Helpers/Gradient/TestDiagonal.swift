//
//  TestDiagonal.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 30/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import XCTest

@testable import ViewFactory

extension Helper_Gradient_Test {
    
    func testDiagonal_WhenGradientLayerWithDefaultNameExist_ShouldThrowError() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let colorTop: UIColor = .red
        let colorBottom: UIColor = .blue
        
        try! gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom)

        // When / Then
        XCTAssertThrowsError(try gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom)) { error in
            XCTAssertEqual(error as! GradientErrorEnum, GradientErrorEnum.layerAlreadyExist)
        }
    }
    
    func testDiagonal_WhenGradientLayerWithDefaultNameNotExist_ShouldAddGradientLayerToView() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let colorTop: UIColor = .red
        let colorBottom: UIColor = .blue
        
        // When
        try! gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom)

        // Then
        XCTAssertTrue(view.layer.sublayers?[0] is CAGradientLayer)
    }
    
    func testDiagonal_WhenGradientLayerWithSpecificNameExist_ShouldThrowError() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layerName: String = "testGradientLayer"
        let colorTop: UIColor = .red
        let colorBottom: UIColor = .blue
        
        try! gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom, layerName: layerName)

        // When / Then
        XCTAssertThrowsError(try gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom, layerName: layerName)) { error in
            XCTAssertEqual(error as! GradientErrorEnum, GradientErrorEnum.layerAlreadyExist)
        }
    }
    
    func testDiagonal_WhenGradientLayerWithSpecificNameNotExist_ShouldAddGradientLayerToView() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layerName: String = "testGradientLayer"
        let colorTop: UIColor = .red
        let colorBottom: UIColor = .blue
        
        // When
        try! gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom, layerName: layerName)

        // Then
        XCTAssertTrue(view.layer.sublayers?[0] is CAGradientLayer)
    }
    
    func testDiagonal_WhenThereIsAnotherGradientLayer_ShouldAddGradientLayerToView() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let firstLayerName: String = "firstTestGradientLayer"
        let secondLayerName: String = "secondTestGradientLayer"
        let colorTop: UIColor = .red
        let colorBottom: UIColor = .blue
        
        try! gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom, layerName: firstLayerName)
        
        // When
        try! gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom, layerName: secondLayerName)

        // Then
        XCTAssertTrue(view.layer.sublayers?[0] is CAGradientLayer)
        XCTAssertTrue(view.layer.sublayers?[1] is CAGradientLayer)
    }
    
    func testDiagonal_WhenThereIsAnotherLayer_ShouldAddGradientLayerToViewAsFirstLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layer = CALayer()
        let layerName: String = "testLayer"
        layer.name = layerName
        view.layer.insertSublayer(layer, at: 0)
        
        let gradientLayerName: String = "TestGradientLayer"
        let colorTop: UIColor = .red
        let colorBottom: UIColor = .blue
        
        // When
        try! gradientHelper.diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom, layerName: layerName)

        // Then
        XCTAssertTrue(view.layer.sublayers?[0] is CAGradientLayer)
        XCTAssertFalse(view.layer.sublayers?[1] is CAGradientLayer)
    }
}
