//
//  TestVertical.swift
//
//
//  Created by Marek Loose on 12/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Stack_Test {
    
    func testVertical_WhenChildViewsAreEven_ShouldFillEntireSpace() {
        // Given
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: testHeight)
        _ = constraintHelper.setWidth(for: view1, at: testIphone8Width)
        _ = constraintHelper.setHeight(for: view1, at: testHeight)
        
        let view2 = UIView()
        view2.backgroundColor = .green
        view2.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: testHeight)
        _ = constraintHelper.setWidth(for: view2, at: testIphone8Width)
        _ = constraintHelper.setHeight(for: view2, at: testHeight)
        
        let view3 = UIView()
        view3.backgroundColor = .orange
        view3.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: testHeight)
        _ = constraintHelper.setWidth(for: view3, at: testIphone8Width)
        _ = constraintHelper.setHeight(for: view3, at: testHeight)
        
        // When
        let stack = stackFactory.vertical(views: [view1, view2, view3])
        stack.layer.borderWidth = 1
        stack.layer.borderColor = UIColor.red.cgColor
        
        // Then
        assertSnapshot(matching: stack, as: .image)
    }
    
    func testVertical_WhenChildViewsAreNotEven_ShouldFillEntireSpace() {
        // Given
        let view1 = UIView()
        view1.backgroundColor = .yellow
        view1.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: testHeight)
        _ = constraintHelper.setWidth(for: view1, at: testIphone8Width)
        _ = constraintHelper.setHeight(for: view1, at: testHeight)
        
        let view2 = UIView()
        view2.backgroundColor = .green
        view2.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: 50)
        _ = constraintHelper.setWidth(for: view2, at: testIphone8Width)
        _ = constraintHelper.setHeight(for: view2, at: 50)
        
        let view3 = UIView()
        view3.backgroundColor = .orange
        view3.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: testHeight)
        _ = constraintHelper.setWidth(for: view3, at: testIphone8Width)
        _ = constraintHelper.setHeight(for: view3, at: testHeight)
        
        // When
        let stack = stackFactory.vertical(views: [view1, view2, view3])
        stack.layer.borderWidth = 1
        stack.layer.borderColor = UIColor.red.cgColor
        
        // Then
        assertSnapshot(matching: stack, as: .image)
    }
}
