//
//  MockConstraintHelper.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 31/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public final class MockConstraintHelper: ConstraintHelperProtocol {
    
    public var setAllToViewCallsCount: Int = 0
    public var setAllToLayoutGuideCallsCount: Int = 0
    public var setStackToViewCallsCount: Int = 0
    public var setStackToLayoutGuideCallsCount: Int = 0
    
    public var mockVerticalAt: [Padding] = []
    public var mockChildrenInOrder: [UIView] = []
    public var mockLayoutConstraint: NSLayoutConstraint = NSLayoutConstraint()
    
    public init() {}
    
    public func setTop(for firstView: UIView, to secondView: UIView, at: Padding) {}
    
    public func setBottom(for firstView: UIView, to secondView: UIView, at: Padding) {}
    
    public func setLeft(for firstView: UIView, to secondView: UIView, at: Padding) {}
    
    public func setRight(for firstView: UIView, to secondView: UIView, at: Padding) {}
    
    public func setBellow(for firstView: UIView, bellow secondView: UIView, at: Padding) {}
    
    public func setTop(for firstView: UIView, to secondView: UILayoutGuide, at: Padding) {}
    
    public func setBottom(for firstView: UIView, to secondView: UILayoutGuide, at: Padding) {}
    
    public func setLeft(for firstView: UIView, to secondView: UILayoutGuide, at: Padding) {}
    
    public func setRight(for firstView: UIView, to secondView: UILayoutGuide, at: Padding) {}
    
    public func setVertical(for child: UIView, to parent: UIView, at: Padding) {}
    
    public func setVertical(for childs: [UIView], to parent: UIView, at: Padding) {}
    
    public func setHorizontal(for child: UIView, to parent: UIView, at: Padding) {}
    
    public func setHorizontal(for childs: [UIView], to parent: UIView, at: Padding) {}
    
    public func setAll(for child: UIView, to parent: UIView, at: Padding) { setAllToViewCallsCount += 1 }
    
    public func setVertical(for child: UIView, to parent: UILayoutGuide, at: Padding) {}
    
    public func setHorizontal(for child: UIView, to parent: UILayoutGuide, at: Padding) {}
    
    public func setAll(for child: UIView, to parent: UILayoutGuide, at: Padding) { setAllToLayoutGuideCallsCount += 1 }
    
    public func setStack(for childrenInOrder: [UIView], to parent: UIView, horizontalAt: Padding, verticalAt: [Padding]) throws {
        setStackToViewCallsCount += 1
        mockVerticalAt = verticalAt
        mockChildrenInOrder = childrenInOrder
    }
    
    public func setStack(for childrenInOrder: [UIView], to parent: UILayoutGuide, horizontalAt: Padding, verticalAt: [Padding]) throws {
        setStackToLayoutGuideCallsCount += 1
        mockVerticalAt = verticalAt
        mockChildrenInOrder = childrenInOrder
    }
    
    public func setHeight(for view: UIView, at: CGFloat) -> NSLayoutConstraint { mockLayoutConstraint }
    
    public func setWidth(for view: UIView, at: CGFloat) -> NSLayoutConstraint { mockLayoutConstraint }
    
    public func setCenter(for child: UIView, in parent: UIView) {}
}
