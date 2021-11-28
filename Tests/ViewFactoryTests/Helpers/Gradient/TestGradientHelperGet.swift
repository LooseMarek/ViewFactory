//
//  TestGet.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 30/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import XCTest

@testable import ViewFactory

extension Helper_Gradient_Test {
    
    func testGet_WhenViewDontHaveAnySublayers_ShouldReturnNil() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layerName: String = "testGradientLayer"
        
        let result: CAGradientLayer? = gradientHelper.get(layerName, from: view)

        // Then
        XCTAssertNil(result)
    }
    
    func testGet_WhenGradientLayerExistButWithDifferentName_ShouldReturnNil() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layerName: String = "testGradientLayer"
        let gradientLayer = CAGradientLayer()
        gradientLayer.name = layerName
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        let layerNameToCheck: String = "testGradientLayerToCheck"
        
        let result: CAGradientLayer? = gradientHelper.get(layerNameToCheck, from: view)

        // Then
        XCTAssertNil(result)
    }
    
    func testGet_WhenLayerExistButItsNotGradientLayer_ShouldReturnNil() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layerName: String = "testGradientLayer"
        let layer = CALayer()
        layer.name = layerName
        view.layer.insertSublayer(layer, at: 0)
        
        let result: CAGradientLayer? = gradientHelper.get(layerName, from: view)

        // Then
        XCTAssertNil(result)
    }
    
    func testGet_WhenGradientLayerExistAndHaveGivenName_ShouldReturnGradientLayer() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layerName: String = "testGradientLayer"
        let gradientLayer = CAGradientLayer()
        gradientLayer.name = layerName
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        let result: CAGradientLayer? = gradientHelper.get(layerName, from: view)

        // Then
        XCTAssertNotNil(result)
    }
}
