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
    func setTop(for firstView: UIView, to secondView: UIView, at: CGFloat)
    func setBottom(for firstView: UIView, to secondView: UIView, at: CGFloat)
    func setLeft(for firstView: UIView, to secondView: UIView, at: CGFloat)
    func setRight(for firstView: UIView, to secondView: UIView, at: CGFloat)
    func setBellow(for firstView: UIView, bellow secondView: UIView, at: CGFloat)
    
    // To UILayoutGuide
    func setTop(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat)
    func setBottom(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat)
    func setLeft(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat)
    func setRight(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat)
    
    // Directional to UIView
    func setVertical(for child: UIView, to parent: UIView, at: CGFloat)
    func setVertical(for childs: [UIView], to parent: UIView, at: CGFloat)
    func setHorizontal(for child: UIView, to parent: UIView, at: CGFloat)
    func setHorizontal(for childs: [UIView], to parent: UIView, at: CGFloat)
    func setAll(for child: UIView, to parent: UIView, at: CGFloat)
    
    // Directional to UILayoutGuide
    func setVertical(for child: UIView, to parent: UILayoutGuide, at: CGFloat)
    func setHorizontal(for child: UIView, to parent: UILayoutGuide, at: CGFloat)
    func setAll(for child: UIView, to parent: UILayoutGuide, at: CGFloat)
    
    // Stack to UIView
    func setStack(for childrenInOrder: [UIView], to parent: UIView, horizontalAt: CGFloat, verticalAt: [CGFloat]) throws
    
    // Stack to UILayoutGuide
    func setStack(for childrenInOrder: [UIView], to parent: UILayoutGuide, horizontalAt: CGFloat, verticalAt: [CGFloat]) throws
    
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
    
    public func setTop(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat) {
        NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: secondView.topAnchor, constant: at),
        ])
    }
    
    public func setBottom(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat) {
        NSLayoutConstraint.activate([
            firstView.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: -at)
        ])
    }
    
    public func setLeft(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat) {
        NSLayoutConstraint.activate([
            firstView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: at)
        ])
    }
    
    public func setRight(for firstView: UIView, to secondView: UILayoutGuide, at: CGFloat) {
        NSLayoutConstraint.activate([
            firstView.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -at)
        ])
    }
    
    // To UILayoutGuide
    
    public func setTop(for firstView: UIView, to secondView: UIView, at: CGFloat) {
        NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: secondView.topAnchor, constant: at),
        ])
    }
    
    public func setBottom(for firstView: UIView, to secondView: UIView, at: CGFloat) {
        NSLayoutConstraint.activate([
            firstView.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: -at)
        ])
    }
    
    public func setLeft(for firstView: UIView, to secondView: UIView, at: CGFloat) {
        NSLayoutConstraint.activate([
            firstView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: at)
        ])
    }
    
    public func setRight(for firstView: UIView, to secondView: UIView, at: CGFloat) {
        NSLayoutConstraint.activate([
            firstView.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -at)
        ])
    }
    
    public func setBellow(for firstView: UIView, bellow secondView: UIView, at: CGFloat) {
         NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: at)
         ])
    }
    
    // Directional to UIView
    
    public func setVertical(for child: UIView, to parent: UIView, at: CGFloat) {
        setTop(for: child, to: parent, at: at)
        setBottom(for: child, to: parent, at: at)
    }
    
    public func setVertical(for childs: [UIView], to parent: UIView, at: CGFloat) {
        for child in childs {
            setVertical(for: child, to: parent, at: at)
        }
    }
    
    public func setHorizontal(for child: UIView, to parent: UIView, at: CGFloat) {
        setLeft(for: child, to: parent, at: at)
        setRight(for: child, to: parent, at: at)
    }
    
    public func setHorizontal(for childs: [UIView], to parent: UIView, at: CGFloat) {
        for child in childs {
            setHorizontal(for: child, to: parent, at: at)
        }
    }
    
    public func setAll(for child: UIView, to parent: UIView, at: CGFloat) {
        setVertical(for: child, to: parent, at: at)
        setHorizontal(for: child, to: parent, at: at)
    }
    
    // Directional to UILayoutGuide
    
    public func setVertical(for child: UIView, to parent: UILayoutGuide, at: CGFloat) {
        setTop(for: child, to: parent, at: at)
        setBottom(for: child, to: parent, at: at)
    }
    
    public func setHorizontal(for child: UIView, to parent: UILayoutGuide, at: CGFloat) {
        setLeft(for: child, to: parent, at: at)
        setRight(for: child, to: parent, at: at)
    }
    
    public func setAll(for child: UIView, to parent: UILayoutGuide, at: CGFloat) {
        setVertical(for: child, to: parent, at: at)
        setHorizontal(for: child, to: parent, at: at)
    }
    
    // Stack to UIView
    
    public func setStack(for childrenInOrder: [UIView], to parent: UIView, horizontalAt: CGFloat, verticalAt: [CGFloat]) throws {
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
    
    public func setStack(for childrenInOrder: [UIView], to parent: UILayoutGuide, horizontalAt: CGFloat, verticalAt: [CGFloat]) throws {
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
