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
        stack.spacing = PaddingEnum.sixteen.rawValue
        
        constraintHelper.setHorizontal(for: views, to: stack, at: 0)

        return stack
    }
    
    public func horizontal(views: [UIView]) -> UIStackView {
        let stack = common(views: views)
        stack.spacing = PaddingEnum.sixteen.rawValue
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        constraintHelper.setVertical(for: views, to: stack, at: 0)

        return stack
    }
    
    public func twoColumns(leftColumnViews: [UIView], rightColumnViews: [UIView]) -> UIStackView {
        let leftColumnStack = common(views: leftColumnViews)
        leftColumnStack.distribution = .equalCentering
        leftColumnStack.alignment = .center
        leftColumnStack.spacing = PaddingEnum.twentyFour.rawValue
        
        constraintHelper.setHorizontal(for: leftColumnViews, to: leftColumnStack, at: 0)
        
        let rightColumnStack = common(views: rightColumnViews)
        rightColumnStack.distribution = .equalCentering
        rightColumnStack.alignment = .center
        rightColumnStack.spacing = PaddingEnum.twentyFour.rawValue
        
        constraintHelper.setHorizontal(for: rightColumnViews, to: rightColumnStack, at: 0)
        
        let columns = [
            leftColumnStack,
            rightColumnStack
        ]
        
        let stack = common(views: columns)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.spacing = PaddingEnum.twentyFour.rawValue
        
        constraintHelper.setVertical(for: columns, to: stack, at: 0)
        
        return stack
    }
    
    public func labeledView(label: UILabel, for view: UIView) -> UIStackView {
        let views = [ label, view ]
        let stack = common(views: views)
        stack.spacing = PaddingEnum.four.rawValue
        
        constraintHelper.setHorizontal(for: views, to: stack, at: 0)
        
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
