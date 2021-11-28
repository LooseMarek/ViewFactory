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
    
    func main(views: [UIView]) -> UIStackView
    func card(views: [UIView]) -> UIStackView
    func cardCenter(views: [UIView]) -> UIStackView
    func cardTwoColumns(leftColumnViews: [UIView], rightColumnViews: [UIView]) -> UIStackView
    func labeledView(label: UILabel, for view: UIView) -> UIStackView
}

public class StackFactory: StackFactoryProtocol {
    
    public var constraintHelper: ConstraintHelperProtocol
    
    public init(constraintHelper: ConstraintHelperProtocol) {
        self.constraintHelper = constraintHelper
    }
    
    public func main(views: [UIView]) -> UIStackView {
        let stack = common(views: views)
        stack.spacing = PaddingEnum.sixteen.rawValue
        
        setHorizontalConstraints(for: views, in: stack)

        return stack
    }
    
    public func card(views: [UIView]) -> UIStackView {
        let stack = common(views: views)
        stack.spacing = PaddingEnum.twentyFour.rawValue
        
        setHorizontalConstraints(for: views, in: stack)
        
        return stack
    }
    
    public func cardCenter(views: [UIView]) -> UIStackView {
        let stack = common(views: views)
        stack.alignment = .center
        stack.spacing = PaddingEnum.twentyFour.rawValue
        
        return stack
    }
    
    public func cardTwoColumns(leftColumnViews: [UIView], rightColumnViews: [UIView]) -> UIStackView {
        let leftColumnStack = common(views: leftColumnViews)
        leftColumnStack.distribution = .equalCentering
        leftColumnStack.alignment = .center
        leftColumnStack.spacing = PaddingEnum.twentyFour.rawValue
        
        setHorizontalConstraints(for: leftColumnViews, in: leftColumnStack)
        
        let rightColumnStack = common(views: rightColumnViews)
        rightColumnStack.distribution = .equalCentering
        rightColumnStack.alignment = .center
        rightColumnStack.spacing = PaddingEnum.twentyFour.rawValue
        
        setHorizontalConstraints(for: rightColumnViews, in: rightColumnStack)
        
        let columns = [
            leftColumnStack,
            rightColumnStack
        ]
        
        let stack = common(views: columns)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.spacing = PaddingEnum.twentyFour.rawValue
        
        setVerticalConstraints(for: columns, in: stack)
        
        return stack
    }
    
    public func labeledView(label: UILabel, for view: UIView) -> UIStackView {
        let views = [ label, view ]
        let stack = common(views: views)
        stack.spacing = PaddingEnum.four.rawValue
        
        setHorizontalConstraints(for: views, in: stack)
        
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
    
    private func setHorizontalConstraints(for views: [UIView], in stack: UIStackView) {
        for view in views {
            constraintHelper.setHorizontal(for: view, to: stack, at: 0)
        }
    }
    
    private func setVerticalConstraints(for views: [UIView], in stack: UIStackView) {
        for view in views {
            constraintHelper.setVertical(for: view, to: stack, at: 0)
        }
    }
}
