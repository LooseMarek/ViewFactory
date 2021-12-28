//
//  ConstraintHelper.swift
//  ViewFactory
//
//  Created by Marek Loose on 17/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit

public protocol ConstraintHelperProtocol {
    // To UIView
    func setTop(for firstView: UIView, to secondView: UIView, at: Padding)
    func setBottom(for firstView: UIView, to secondView: UIView, at: Padding)
    func setLeft(for firstView: UIView, to secondView: UIView, at: Padding)
    func setRight(for firstView: UIView, to secondView: UIView, at: Padding)
    func setBellow(for firstView: UIView, bellow secondView: UIView, at: Padding)
    
    // To UILayoutGuide
    func setTop(for firstView: UIView, to secondView: UILayoutGuide, at: Padding)
    func setBottom(for firstView: UIView, to secondView: UILayoutGuide, at: Padding)
    func setLeft(for firstView: UIView, to secondView: UILayoutGuide, at: Padding)
    func setRight(for firstView: UIView, to secondView: UILayoutGuide, at: Padding)
    
    // Directional to UIView
    func setVertical(for child: UIView, to parent: UIView, at: Padding)
    func setVertical(for childs: [UIView], to parent: UIView, at: Padding)
    func setHorizontal(for child: UIView, to parent: UIView, at: Padding)
    func setHorizontal(for childs: [UIView], to parent: UIView, at: Padding)
    func setAll(for child: UIView, to parent: UIView, at: Padding)
    
    // Directional to UILayoutGuide
    func setVertical(for child: UIView, to parent: UILayoutGuide, at: Padding)
    func setHorizontal(for child: UIView, to parent: UILayoutGuide, at: Padding)
    func setAll(for child: UIView, to parent: UILayoutGuide, at: Padding)
    
    // Stack to UIView
    func setStack(for childrenInOrder: [UIView], to parent: UIView, horizontalAt: Padding, verticalAt: [Padding]) throws
    
    // Stack to UILayoutGuide
    func setStack(for childrenInOrder: [UIView], to parent: UILayoutGuide, horizontalAt: Padding, verticalAt: [Padding]) throws
    
    // Size
    func setHeight(for view: UIView, at: CGFloat) -> NSLayoutConstraint
    func setWidth(for view: UIView, at: CGFloat) -> NSLayoutConstraint
    
    // Center
    func setCenter(for child: UIView, in parent: UIView)
}

public enum ConstraintErrorEnum: Error {
    case missingSubviews
    case missingVerticalConstraint
    case tooManyVerticalConstraints
}

public class ConstraintHelper: ConstraintHelperProtocol {
    
    public init() {}
    
    // To UIView
    
    public func setTop(for firstView: UIView, to secondView: UILayoutGuide, at: Padding) {
        NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: secondView.topAnchor, constant: at.value),
        ])
    }
    
    public func setBottom(for firstView: UIView, to secondView: UILayoutGuide, at: Padding) {
        NSLayoutConstraint.activate([
            firstView.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: -at.value)
        ])
    }
    
    public func setLeft(for firstView: UIView, to secondView: UILayoutGuide, at: Padding) {
        NSLayoutConstraint.activate([
            firstView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: at.value)
        ])
    }
    
    public func setRight(for firstView: UIView, to secondView: UILayoutGuide, at: Padding) {
        NSLayoutConstraint.activate([
            firstView.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -at.value)
        ])
    }
    
    // To UILayoutGuide
    
    public func setTop(for firstView: UIView, to secondView: UIView, at: Padding) {
        NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: secondView.topAnchor, constant: at.value),
        ])
    }
    
    public func setBottom(for firstView: UIView, to secondView: UIView, at: Padding) {
        NSLayoutConstraint.activate([
            firstView.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: -at.value)
        ])
    }
    
    public func setLeft(for firstView: UIView, to secondView: UIView, at: Padding) {
        NSLayoutConstraint.activate([
            firstView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: at.value)
        ])
    }
    
    public func setRight(for firstView: UIView, to secondView: UIView, at: Padding) {
        NSLayoutConstraint.activate([
            firstView.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -at.value)
        ])
    }
    
    public func setBellow(for firstView: UIView, bellow secondView: UIView, at: Padding) {
         NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: at.value)
         ])
    }
    
    // Directional to UIView
    
    public func setVertical(for child: UIView, to parent: UIView, at: Padding) {
        setTop(for: child, to: parent, at: at)
        setBottom(for: child, to: parent, at: at)
    }
    
    public func setVertical(for childs: [UIView], to parent: UIView, at: Padding) {
        for child in childs {
            setVertical(for: child, to: parent, at: at)
        }
    }
    
    public func setHorizontal(for child: UIView, to parent: UIView, at: Padding) {
        setLeft(for: child, to: parent, at: at)
        setRight(for: child, to: parent, at: at)
    }
    
    public func setHorizontal(for childs: [UIView], to parent: UIView, at: Padding) {
        for child in childs {
            setHorizontal(for: child, to: parent, at: at)
        }
    }
    
    public func setAll(for child: UIView, to parent: UIView, at: Padding) {
        setVertical(for: child, to: parent, at: at)
        setHorizontal(for: child, to: parent, at: at)
    }
    
    // Directional to UILayoutGuide
    
    public func setVertical(for child: UIView, to parent: UILayoutGuide, at: Padding) {
        setTop(for: child, to: parent, at: at)
        setBottom(for: child, to: parent, at: at)
    }
    
    public func setHorizontal(for child: UIView, to parent: UILayoutGuide, at: Padding) {
        setLeft(for: child, to: parent, at: at)
        setRight(for: child, to: parent, at: at)
    }
    
    public func setAll(for child: UIView, to parent: UILayoutGuide, at: Padding) {
        setVertical(for: child, to: parent, at: at)
        setHorizontal(for: child, to: parent, at: at)
    }
    
    // Stack to UIView
    
    public func setStack(for childrenInOrder: [UIView], to parent: UIView, horizontalAt: Padding, verticalAt: [Padding]) throws {
        let haveNoSubviews: Bool = childrenInOrder.count == 0
        
        if haveNoSubviews {
            throw ConstraintErrorEnum.missingSubviews
        }
        
        let verticalConstraintsMatchSubviews: Bool = childrenInOrder.count == verticalAt.count - 1 // There should always be one more vertical constraint than views
        
        if (!verticalConstraintsMatchSubviews) {
            let dontHaveEnoughVerticalConstaints: Bool = childrenInOrder.count > verticalAt.count - 1
            
            if dontHaveEnoughVerticalConstaints {
                throw ConstraintErrorEnum.missingVerticalConstraint
            } else {
                throw ConstraintErrorEnum.tooManyVerticalConstraints
            }
        }
        
        for (index, child) in childrenInOrder.enumerated() {
            setHorizontal(for: child, to: parent, at: horizontalAt)
            
            let isFirst: Bool = index == 0

            if (isFirst) {
                setTop(for: child, to: parent, at: verticalAt[index])
                continue
            }
            
            let previousChildIndex: Int = index - 1
            let previousChild: UIView = childrenInOrder[previousChildIndex]
            
            setBellow(for: child, bellow: previousChild, at: verticalAt[index])
            
            let isLast: Bool = index == childrenInOrder.count - 1
            let haveBottomConstraint: Bool = childrenInOrder.count < verticalAt.count
            
            if (isLast && haveBottomConstraint) {
                let bottomConstaintIndex: Int = index + 1

                setBottom(for: child, to: parent, at: verticalAt[bottomConstaintIndex])
            }
        }
    }
    
    // Stack to UILayoutGuide
    
    public func setStack(for childrenInOrder: [UIView], to parent: UILayoutGuide, horizontalAt: Padding, verticalAt: [Padding]) throws {
        let haveNoSubviews: Bool = childrenInOrder.count == 0
        
        if haveNoSubviews {
            throw ConstraintErrorEnum.missingSubviews
        }
        
        let verticalConstraintsMatchSubviews: Bool = childrenInOrder.count == verticalAt.count - 1 // There should always be one more vertical constraint than views
        
        if (!verticalConstraintsMatchSubviews) {
            let dontHaveEnoughVerticalConstaints: Bool = childrenInOrder.count > verticalAt.count - 1
            
            if dontHaveEnoughVerticalConstaints {
                throw ConstraintErrorEnum.missingVerticalConstraint
            } else {
                throw ConstraintErrorEnum.tooManyVerticalConstraints
            }
        }
        
        for (index, child) in childrenInOrder.enumerated() {
            setHorizontal(for: child, to: parent, at: horizontalAt)
            
            let isFirst: Bool = index == 0

            if (isFirst) {
                setTop(for: child, to: parent, at: verticalAt[index])
                continue
            }
            
            let previousChildIndex: Int = index - 1
            let previousChild: UIView = childrenInOrder[previousChildIndex]
            
            setBellow(for: child, bellow: previousChild, at: verticalAt[index])
            
            let isLast: Bool = index == childrenInOrder.count - 1
            let haveBottomConstraint: Bool = childrenInOrder.count < verticalAt.count
            
            if (isLast && haveBottomConstraint) {
                let bottomConstaintIndex: Int = index + 1

                setBottom(for: child, to: parent, at: verticalAt[bottomConstaintIndex])
            }
        }
    }
    
    // Size
    
    public func setHeight(for view: UIView, at: CGFloat) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint = view.heightAnchor.constraint(equalToConstant: at)
        constraint.isActive = true
        
        return constraint
    }
    
    public func setWidth(for view: UIView, at: CGFloat) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint = view.widthAnchor.constraint(equalToConstant: at)
        constraint.isActive = true
        
        return constraint
    }
    
    // Center
    public func setCenter(for child: UIView, in parent: UIView) {
        NSLayoutConstraint.activate([
            child.centerXAnchor.constraint(equalTo: parent.centerXAnchor),
            child.centerYAnchor.constraint(equalTo: parent.centerYAnchor)
        ])
    }
}
