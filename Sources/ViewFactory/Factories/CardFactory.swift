//
//  CardFactory.swift
//  ViewFactory
//
//  Created by Marek Loose on 15/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit

public protocol CardFactoryProtocol {
    var constraintHelper: ConstraintHelperProtocol { get }
    var label: LabelFactoryProtocol { get }
    var input: InputFactoryProtocol { get }
    var button: ButtonFactoryProtocol { get }
    var stack: StackFactoryProtocol { get }
    var viewFactoryColor: ViewFactoryColorProtocol { get }
    
    func main(card: UIView, stack: UIStackView) -> UIView
}

public extension CardFactoryProtocol {
    func main(card: UIView = UIView(), stack: UIStackView) -> UIView {
        return main(card: card, stack: stack)
    }
}

public class CardFactory: CardFactoryProtocol {
    
    public let constraintHelper: ConstraintHelperProtocol
    public let label: LabelFactoryProtocol
    public let input: InputFactoryProtocol
    public let button: ButtonFactoryProtocol
    public let stack: StackFactoryProtocol
    public var viewFactoryColor: ViewFactoryColorProtocol
    
    public init(constraintHelper: ConstraintHelperProtocol, labelFactory: LabelFactoryProtocol, inputFactory: InputFactoryProtocol, buttonFactory: ButtonFactoryProtocol, stackFactory: StackFactoryProtocol, viewFactoryColor: ViewFactoryColorProtocol) {
        self.constraintHelper = constraintHelper
        self.label = labelFactory
        self.input = inputFactory
        self.button = buttonFactory
        self.stack = stackFactory
        self.viewFactoryColor = viewFactoryColor
    }
    
    public func main(card: UIView = UIView(), stack: UIStackView) -> UIView {
        let elevation = ElevationEnum.fourDp.rawValue
        
        card.frame = CGRect(x: 0, y: 0, width: 300, height: 100)
        card.backgroundColor = viewFactoryColor.card
        
        card.layer.zPosition = elevation
        card.layer.masksToBounds = false
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOffset = CGSize(width: elevation, height: elevation)
        card.layer.shadowOpacity = 0.2
        card.layer.shadowRadius = CGFloat(elevation)
        card.layer.cornerRadius = 8.0
        //card.clipsToBounds = true
        card.translatesAutoresizingMaskIntoConstraints = false
        
        card.addSubview(stack)
        
        constraintHelper.setVertical(for: stack, to: card, at: .twentyFour)
        constraintHelper.setHorizontal(for: stack, to: card, at: .sixteen)

        return card
    }
}
