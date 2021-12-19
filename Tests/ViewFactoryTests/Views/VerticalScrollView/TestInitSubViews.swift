//
//  TestInitSubviews.swift
//  
//
//  Created by Marek Loose on 19/12/2021.
//

import XCTest

@testable import ViewFactory

extension View_VerticalScroll_Test {
    
    func testInitSubviews_WhenCalledWithNoSubviews_ShouldThrowError() {
        // Given
        let parentView = UIView()
        
        let horizontalPadding: CGFloat = PaddingEnum.sixteen.rawValue
        
        let scrollView = VerticalScrollView(constraintHelper: constraintHelper)
        
        // When / Then
        XCTAssertThrowsError(try scrollView.initSubviews([], in: parentView, horizontalPadding: horizontalPadding, verticalPaddings: [])) { error in
            XCTAssertEqual(error as! ConstraintErrorEnum, ConstraintErrorEnum.missingSubviews)
        }
    }
    
    func testInitSubviews_WhenCalledWithNoVerticalConstaints_ShouldThrowError() {
        // Given
        let parentView = UIView()
        
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: 0, height: 50.0)
        _ = constraintHelper.setHeight(for: view1, at: 50.0)
        
        let horizontalPadding: CGFloat = PaddingEnum.sixteen.rawValue
        
        let scrollView = VerticalScrollView(constraintHelper: constraintHelper)
        
        // When / Then
        XCTAssertThrowsError(try scrollView.initSubviews([view1], in: parentView, horizontalPadding: horizontalPadding, verticalPaddings: [])) { error in
            XCTAssertEqual(error as! ConstraintErrorEnum, ConstraintErrorEnum.missingVerticalConstraint)
        }
    }
    
    func testInitSubviews_WhenCalledWithTooManyVerticalConstaints_ShouldThrowError() {
        // Given
        let parentView = UIView()
        
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: 0, height: 50.0)
        _ = constraintHelper.setHeight(for: view1, at: 50.0)
        
        let horizontalPadding: CGFloat = PaddingEnum.sixteen.rawValue
        let verticalPaddings: [CGFloat] = [
            PaddingEnum.sixteen.rawValue,
            PaddingEnum.twentyFour.rawValue,
            PaddingEnum.sixteen.rawValue
        ]
        
        let scrollView = VerticalScrollView(constraintHelper: constraintHelper)
        
        // When / Then
        XCTAssertThrowsError(try scrollView.initSubviews([view1], in: parentView, horizontalPadding: horizontalPadding, verticalPaddings: verticalPaddings)) { error in
            XCTAssertEqual(error as! ConstraintErrorEnum, ConstraintErrorEnum.tooManyVerticalConstraints)
        }
    }
    
    func testInitSubviews_WhenCalledWithRightNumberOfVerticalConstaints_ShouldNotThrowError() {
        // Given
        let parentView = UIView()
        
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: 0, height: 50.0)
        _ = constraintHelper.setHeight(for: view1, at: 50.0)
        
        let horizontalPadding: CGFloat = PaddingEnum.sixteen.rawValue
        let verticalPaddings: [CGFloat] = [
            PaddingEnum.sixteen.rawValue,
            PaddingEnum.sixteen.rawValue
        ]
        
        let scrollView = VerticalScrollView(constraintHelper: constraintHelper)
        
        // When / Then
        XCTAssertNoThrow(try scrollView.initSubviews([view1], in: parentView, horizontalPadding: horizontalPadding, verticalPaddings: verticalPaddings))
    }
    
    func testInitSubviews_WhenCalled_ShouldAddSubviews() {
        // Given
        let parentView = UIView()
        
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: 0, height: 50.0)
        _ = constraintHelper.setHeight(for: view1, at: 50.0)
        
        let horizontalPadding: CGFloat = PaddingEnum.sixteen.rawValue
        let verticalPaddings: [CGFloat] = [
            PaddingEnum.sixteen.rawValue,
            PaddingEnum.sixteen.rawValue
        ]
        
        let scrollView = VerticalScrollView(constraintHelper: constraintHelper)
        
        // When / Then
        do {
            try scrollView.initSubviews([view1], in: parentView, horizontalPadding: horizontalPadding, verticalPaddings: verticalPaddings)
            
            XCTAssertEqual(scrollView.subviews.count, 1)
            XCTAssertEqual(scrollView.scrollPage.subviews.count, 1)
        } catch {
            XCTAssertNil(error)
        }
    }
    
    func testInitSubviews_WhenCalledMultipleTimes_ShouldAddSubviewsOnlyOnce() {
        // Given
        let parentView = UIView()
        
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: 0, height: 50.0)
        _ = constraintHelper.setHeight(for: view1, at: 50.0)
        
        let horizontalPadding: CGFloat = PaddingEnum.sixteen.rawValue
        let verticalPaddings: [CGFloat] = [
            PaddingEnum.sixteen.rawValue,
            PaddingEnum.sixteen.rawValue
        ]
        
        let scrollView = VerticalScrollView(constraintHelper: constraintHelper)
        
        // When / Then
        do {
            try scrollView.initSubviews([view1], in: parentView, horizontalPadding: horizontalPadding, verticalPaddings: verticalPaddings)
            try scrollView.initSubviews([view1], in: parentView, horizontalPadding: horizontalPadding, verticalPaddings: verticalPaddings)
            
            XCTAssertEqual(scrollView.subviews.count, 1)
            XCTAssertEqual(scrollView.scrollPage.subviews.count, 1)
        } catch {
            XCTAssertNil(error)
        }
    }
}
