//
//  MockConstraintHelper.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 31/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class MockConstraintHelper: ConstraintHelperProtocol {
    
    public var setAllToViewCallsCount: Int = 0
    public var setAllToLayoutGuideCallsCount: Int = 0
    public var setStackToViewCallsCount: Int = 0
    public var setStackToLayoutGuideCallsCount: Int = 0
    
    public var mockVerticalAt: [CGFloat] = []
    public var mockChildrenInOrder: [UIView] = []
    public var mockLayoutConstraint: NSLayoutConstraint = NSLayoutConstraint()
    
    public init() {}
    
    public func setTop(for firstView: UIView, to secondView: UIView, at: CGFloat) {
        
    }
    
    public func setBottom(for firstView: UIView, to secondView: UIView, at: CGFloat) {
        
    }
    
    public func setLeft(for firstView: UIView, to secondView: UIView, at: CGFloat) {
        
    }
    
    public func setRight(for firstView: UIView, to secondView: UIView, at: CGFloat) {
        
    }
    
    public func setBellow(for firstView: UIView, bellow secondView: UIView, at: CGFloat) {
        
    }
    
    public func setTop(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat) {
        
    }
    
    public func setBottom(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat) {
        
    }
    
    public func setLeft(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat) {
        
    }
    
    public func setRight(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat) {
        
    }
    
    public func setVertical(for child: UIView, to parent: UIView, at: CGFloat) {
        
    }
    
    public func setVertical(for childs: [UIView], to parent: UIView, at: CGFloat) {
        
    }
    
    public func setHorizontal(for child: UIView, to parent: UIView, at: CGFloat) {
        
    }
    
    public func setHorizontal(for childs: [UIView], to parent: UIView, at: CGFloat) {
        
    }
    
    public func setAll(for child: UIView, to parent: UIView, at: CGFloat) {
        setAllToViewCallsCount += 1
    }
    
    public func setVertical(for child: UIView, to parent: UILayoutGuide, at: CGFloat) {
        
    }
    
    public func setHorizontal(for child: UIView, to parent: UILayoutGuide, at: CGFloat) {
        
    }
    
    public func setAll(for child: UIView, to parent: UILayoutGuide, at: CGFloat) {
        setAllToLayoutGuideCallsCount += 1
    }
    
    public func setStack(for childrenInOrder: [UIView], to parent: UIView, horizontalAt: CGFloat, verticalAt: [CGFloat]) throws {
        setStackToViewCallsCount += 1
        
        mockVerticalAt = verticalAt
        mockChildrenInOrder = childrenInOrder
    }
    
    public func setStack(for childrenInOrder: [UIView], to parent: UILayoutGuide, horizontalAt: CGFloat, verticalAt: [CGFloat]) throws {
        setStackToLayoutGuideCallsCount += 1

        mockVerticalAt = verticalAt
        mockChildrenInOrder = childrenInOrder
    }
    
    public func setHeight(for view: UIView, at: CGFloat) -> NSLayoutConstraint {
        return mockLayoutConstraint
    }
    
    public func setWidth(for view: UIView, at: CGFloat) -> NSLayoutConstraint {
        return mockLayoutConstraint
    }
    
    public func setCenter(for child: UIView, in parent: UIView) {
        
    }
}
