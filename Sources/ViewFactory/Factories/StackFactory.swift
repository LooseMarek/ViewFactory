//
//  StackFactory.swift
//  ViewFactory
//
//  Created by Marek Loose on 17/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit

public protocol StackFactoryProtocol {
    var constraintHelper: ConstraintHelperProtocol { get }
    
    func vertical(views: [UIView]) -> UIStackView
    func horizontal(views: [UIView]) -> UIStackView
    func twoColumns(leftColumnViews: [UIView], rightColumnViews: [UIView]) -> UIStackView
    func labeledView(label: UILabel, for view: UIView) -> UIStackView
}

public class StackFactory: StackFactoryProtocol {
    
    public var constraintHelper: ConstraintHelperProtocol
    
    public init(constraintHelper: ConstraintHelperProtocol) {
        self.constraintHelper = constraintHelper
    }
    
    public func vertical(views: [UIView]) -> UIStackView {
        let stack = common(views: views)
        stack.spacing = Padding.sixteen.value
        
        constraintHelper.setHorizontal(for: views, to: stack, at: .zero)

        return stack
    }
    
    public func horizontal(views: [UIView]) -> UIStackView {
        let stack = common(views: views)
        stack.spacing = Padding.sixteen.value
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        constraintHelper.setVertical(for: views, to: stack, at: .zero)

        return stack
    }
    
    public func twoColumns(leftColumnViews: [UIView], rightColumnViews: [UIView]) -> UIStackView {
        let leftColumnStack = common(views: leftColumnViews)
        leftColumnStack.distribution = .equalCentering
        leftColumnStack.alignment = .center
        leftColumnStack.spacing = Padding.twentyFour.value
        
        constraintHelper.setHorizontal(for: leftColumnViews, to: leftColumnStack, at: .zero)
        
        let rightColumnStack = common(views: rightColumnViews)
        rightColumnStack.distribution = .equalCentering
        rightColumnStack.alignment = .center
        rightColumnStack.spacing = Padding.twentyFour.value
        
        constraintHelper.setHorizontal(for: rightColumnViews, to: rightColumnStack, at: .zero)
        
        let columns = [
            leftColumnStack,
            rightColumnStack
        ]
        
        let stack = common(views: columns)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.spacing = Padding.twentyFour.value
        
        constraintHelper.setVertical(for: columns, to: stack, at: .zero)
        
        return stack
    }
    
    public func labeledView(label: UILabel, for view: UIView) -> UIStackView {
        let views = [ label, view ]
        let stack = common(views: views)
        stack.spacing = Padding.four.value
        
        constraintHelper.setHorizontal(for: views, to: stack, at: .zero)
        
        return stack
    }
    
    private func common(views: [UIView]) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: views)
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .leading
        stack.translatesAutoresizingMaskIntoConstraints = false

        return stack
    }
}
