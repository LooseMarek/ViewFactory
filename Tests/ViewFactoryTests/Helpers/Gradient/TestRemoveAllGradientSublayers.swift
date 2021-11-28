//
//  TestRemoveAllGradientSublayers.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 30/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import XCTest

@testable import ViewFactory

extension Helper_Gradient_Test {
    
    func testRemoveAllGradientSublayers_WhenThereAreOnlyOtherSublayers_ShouldKeepAllSublayers() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layer1 = CALayer()
        view.layer.insertSublayer(layer1, at: 0)
        let layer2 = CALayer()
        view.layer.insertSublayer(layer2, at: 0)
        
        XCTAssertEqual(view.layer.sublayers?.count, 2)
        
        // When
        gradientHelper.removeAllGradientSublayers(from: view)

        // Then
        XCTAssertEqual(view.layer.sublayers?.count, 2)
    }
    
    func testRemoveAllGradientSublayers_WhenThereAreOnlyGradientSublayers_ShouldRemoveAllSublayers() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let gradientLayer1 = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer1, at: 0)
        let gradientLayer2 = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer2, at: 0)
        
        XCTAssertEqual(view.layer.sublayers?.count, 2)
        
        // When
        gradientHelper.removeAllGradientSublayers(from: view)

        // Then
        XCTAssertNil(view.layer.sublayers)
    }
    
    func testRemoveAllGradientSublayers_WhenThereAreDifferentTypesSublayers_ShouldOnlyRemoveGradienttLayers() {
        // Given
        let view: UIView = UIView(frame: CGRect())
        let layer1 = CALayer()
        view.layer.insertSublayer(layer1, at: 0)
        let layer2 = CALayer()
        view.layer.insertSublayer(layer2, at: 0)
        let gradientLayer1 = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer1, at: 0)
        let gradientLayer2 = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer2, at: 0)
        
        XCTAssertEqual(view.layer.sublayers?.count, 4)
        
        // When
        gradientHelper.removeAllGradientSublayers(from: view)

        // Then
        XCTAssertEqual(view.layer.sublayers?.count, 2)
    }
}
