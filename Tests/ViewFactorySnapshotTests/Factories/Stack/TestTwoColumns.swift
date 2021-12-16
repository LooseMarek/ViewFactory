//
//  TestTwoColumns.swift
//  
//
//  Created by Marek Loose on 16/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Stack_Test {
    
    func testTwoColumns_WhenChildViewsAreEven_ShouldFillEquallyEntireSpace() {
        // Given
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: 0, height: testHeight)
        _ = constraintHelper.setHeight(for: view1, at: testHeight)

        let view2 = UIView()
        view2.backgroundColor = .green
        view2.frame = CGRect(x: 0, y: 0, width: 0, height: testHeight)
        _ = constraintHelper.setHeight(for: view2, at: testHeight)

        let view3 = UIView()
        view3.backgroundColor = .orange
        view3.frame = CGRect(x: 0, y: 0, width: 0, height: testHeight)
        _ = constraintHelper.setHeight(for: view3, at: testHeight)
        
        let view4 = UIView()
        view4.backgroundColor = .blue
        view4.frame = CGRect(x: 0, y: 0, width: 0, height: testHeight)
        _ = constraintHelper.setHeight(for: view4, at: testHeight)

        // When
        let stack = stackFactory.twoColumns(leftColumnViews: [view1, view2], rightColumnViews: [view3, view4])
        stack.layer.borderWidth = 1
        stack.layer.borderColor = UIColor.red.cgColor
        _ = constraintHelper.setWidth(for: stack, at: testIphone8Width)

        // Then
        assertSnapshot(matching: stack, as: .image)
    }

    func testTwoColumns_WhenChildViewsAreNotEven_ShouldExpandHeightToMatchLargestChild() {
        // Given
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: 0, height: testHeight)
        _ = constraintHelper.setHeight(for: view1, at: testHeight)

        let view2 = UIView()
        view2.backgroundColor = .green
        view2.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        _ = constraintHelper.setHeight(for: view2, at: 50)
        _ = constraintHelper.setWidth(for: view2, at: 50)

        let view3 = UIView()
        view3.backgroundColor = .orange
        view3.frame = CGRect(x: 0, y: 0, width: 0, height: testHeight)
        _ = constraintHelper.setHeight(for: view3, at: testHeight)
        
        let view4 = UIView()
        view4.backgroundColor = .blue
        view4.frame = CGRect(x: 0, y: 0, width: 0, height: testHeight)
        _ = constraintHelper.setHeight(for: view4, at: testHeight)

        // When
        let stack = stackFactory.twoColumns(leftColumnViews: [view1, view2], rightColumnViews: [view3, view4])
        stack.layer.borderWidth = 1
        stack.layer.borderColor = UIColor.red.cgColor
        _ = constraintHelper.setWidth(for: stack, at: testIphone8Width)

        // Then
        assertSnapshot(matching: stack, as: .image)
    }
}
