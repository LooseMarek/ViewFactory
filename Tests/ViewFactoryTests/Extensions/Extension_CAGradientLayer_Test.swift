//
//  Extension_CAGradientLayer_Test.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 24/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import XCTest

@testable import ViewFactory

class Extension_CAGradientLayer_Test: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func testPoint_WhenUsedOnEachCase_ShouldReturnCGPoint() {
        // Given
        let topLeft = CAGradientLayer.Point.topLeft
        let centerLeft = CAGradientLayer.Point.centerLeft
        let bottomLeft = CAGradientLayer.Point.bottomLeft
        let topCenter = CAGradientLayer.Point.topCenter
        let center = CAGradientLayer.Point.center
        let bottomCenter = CAGradientLayer.Point.bottomCenter
        let topRight = CAGradientLayer.Point.topRight
        let centerRight = CAGradientLayer.Point.centerRight
        let bottomRight = CAGradientLayer.Point.bottomRight
        
        let expectedtopLeftPoint: CGPoint = CGPoint(x: 0, y: 0)
        let expectedCenterLeftPoint: CGPoint = CGPoint(x: 0, y: 0.5)
        let expectedBottomLeftPoint: CGPoint = CGPoint(x: 0, y: 1.0)
        let expectedTopCenterPoint: CGPoint = CGPoint(x: 0.5, y: 0)
        let expectedCenterPoint: CGPoint = CGPoint(x: 0.5, y: 0.5)
        let expectedBottomCenterPoint: CGPoint = CGPoint(x: 0.5, y: 1.0)
        let expectedTopRightPoint: CGPoint = CGPoint(x: 1.0, y: 0.0)
        let expectedCenterRightPoint: CGPoint = CGPoint(x: 1.0, y: 0.5)
        let expectedBottomRightPoint: CGPoint = CGPoint(x: 1.0, y: 1.0)

        // When
        let resultTopLeft: CGPoint = topLeft.point
        let resultCenterLeft: CGPoint = centerLeft.point
        let resultBottomLeft: CGPoint = bottomLeft.point
        let resultTopCenter: CGPoint = topCenter.point
        let resultCenter: CGPoint = center.point
        let resultBottomCenter: CGPoint = bottomCenter.point
        let resultTopRight: CGPoint = topRight.point
        let resultCenterRight: CGPoint = centerRight.point
        let resultBottomRight: CGPoint = bottomRight.point

        // Then
        XCTAssertEqual(resultTopLeft.x, expectedtopLeftPoint.x)
        XCTAssertEqual(resultTopLeft.y, expectedtopLeftPoint.y)
        
        XCTAssertEqual(resultCenterLeft.x, expectedCenterLeftPoint.x)
        XCTAssertEqual(resultCenterLeft.y, expectedCenterLeftPoint.y)
        
        XCTAssertEqual(resultBottomLeft.x, expectedBottomLeftPoint.x)
        XCTAssertEqual(resultBottomLeft.y, expectedBottomLeftPoint.y)
        
        XCTAssertEqual(resultTopCenter.x, expectedTopCenterPoint.x)
        XCTAssertEqual(resultTopCenter.y, expectedTopCenterPoint.y)
        
        XCTAssertEqual(resultCenter.x, expectedCenterPoint.x)
        XCTAssertEqual(resultCenter.y, expectedCenterPoint.y)
        
        XCTAssertEqual(resultBottomCenter.x, expectedBottomCenterPoint.x)
        XCTAssertEqual(resultBottomCenter.y, expectedBottomCenterPoint.y)
        
        XCTAssertEqual(resultTopRight.x, expectedTopRightPoint.x)
        XCTAssertEqual(resultTopRight.y, expectedTopRightPoint.y)
        
        XCTAssertEqual(resultCenterRight.x, expectedCenterRightPoint.x)
        XCTAssertEqual(resultCenterRight.y, expectedCenterRightPoint.y)
        
        XCTAssertNotEqual(resultBottomRight.x, expectedBottomRightPoint.x)
        XCTAssertEqual(resultBottomRight.y, expectedBottomRightPoint.y)
    }
}
