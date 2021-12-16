//
//  TestLabeledView.swift
//  
//
//  Created by Marek Loose on 16/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

extension Factory_Stack_Test {
    
    func testLabeledView_WhenUsedWithInput_ShouldLabelInput() {
        // Given
        let viewFactoryColor = DefaultViewFactoryColor()
        let labelFactory = LabelFactory(viewFactoryColor: viewFactoryColor)
        let inputFactory = InputFactory(constraintHelper: constraintHelper, viewFactoryColor: viewFactoryColor)
        
        let label = labelFactory.inputLabel()
        label.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: testHeight)
        label.text = "Test Label"
        _ = constraintHelper.setWidth(for: label, at: testIphone8Width)
        
        let input = inputFactory.text()
        input.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: 48.0)
        _ = constraintHelper.setWidth(for: input, at: testIphone8Width)
        input.text = "Test text input"
        
        // When
        let stack = stackFactory.labeledView(label: label, for: input)
        stack.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: stack, as: .image)
    }
    
    func testLabeledView_WhenUsedWithView_ShouldLabelView() {
        // Given
        let viewFactoryColor = DefaultViewFactoryColor()
        let labelFactory = LabelFactory(viewFactoryColor: viewFactoryColor)
        
        let label = labelFactory.inputLabel()
        label.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: testHeight)
        label.text = "Test Label"
        _ = constraintHelper.setWidth(for: label, at: testIphone8Width)
        
        let view = UIView()
        view.backgroundColor = .yellow
        view.frame = CGRect(x: 0, y: 0, width: testIphone8Width, height: 50)
        _ = constraintHelper.setWidth(for: view, at: testIphone8Width)
        _ = constraintHelper.setHeight(for: view, at: 50)
        
        // When
        let stack = stackFactory.labeledView(label: label, for: view)
        stack.backgroundColor = .card
        
        // Then
        assertSnapshot(matching: stack, as: .image)
    }
}
