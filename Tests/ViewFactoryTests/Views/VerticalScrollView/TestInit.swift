//
//  TestInit.swift
//  
//
//  Created by Marek Loose on 19/12/2021.
//

import XCTest

@testable import ViewFactory

extension View_VerticalScroll_Test {
    
    func testInit_WhenCalled_ShouldNotAddScrollPageToScrollView() {
        // Given
        // N/A

        // When
        let scrollView = VerticalScrollView(constraintHelper: mockConstraintHelper)

        // Then
        XCTAssertNotNil(scrollView.scrollPage)
        XCTAssertEqual(scrollView.subviews.count, 0)
    }
    
    func testInit_WhenCalled_ShouldSetFrameToZero() {
        // Given
        // N/A

        // When
        let scrollView = VerticalScrollView(constraintHelper: mockConstraintHelper)

        // Then
        XCTAssertEqual(scrollView.scrollPage.frame, .zero)
        XCTAssertEqual(scrollView.scrollPageWidthConstaint.constant, 0)
    }
}
