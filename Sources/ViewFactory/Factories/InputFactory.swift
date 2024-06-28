//
//  File.swift
//  ViewFactory
//
//  Created by Marek Loose on 14/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit

public protocol InputFactoryProtocol {
    var constraintHelper: ConstraintHelperProtocol { get }
    var viewFactoryColor: ViewFactoryColorProtocol { get }
    
    func number() -> UITextField
    func text() -> UITextField
}

public final class InputFactory: InputFactoryProtocol {
    
    public var constraintHelper: ConstraintHelperProtocol
    public var viewFactoryColor: ViewFactoryColorProtocol
    
    public init(constraintHelper: ConstraintHelperProtocol, viewFactoryColor: ViewFactoryColorProtocol) {
        self.constraintHelper = constraintHelper
        self.viewFactoryColor = viewFactoryColor
    }
    
    public func number() -> UITextField {
        let input = common()
        input.keyboardType = .numberPad

        let numberToolbar: UIToolbar = UIToolbar(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 40, height: CGFloat(44))))
        numberToolbar.barStyle = .default
        numberToolbar.sizeToFit()
        numberToolbar.isTranslucent = true

        input.inputAccessoryView = numberToolbar
        return input
    }
    
    public func text() -> UITextField {
        let input = common()
        input.keyboardType = .default
        return input
    }
    
    private func common() -> UITextField {
        let input = UITextField()
        _ = constraintHelper.setHeight(for: input, at: 48.0)
        input.backgroundColor = viewFactoryColor.input
        input.font = UIFont.preferredFont(forTextStyle: .body)
        input.returnKeyType = .done
        input.textColor = viewFactoryColor.onInput
        input.borderStyle = .roundedRect
        input.adjustsFontSizeToFitWidth = true
        input.attributedPlaceholder = NSAttributedString(string: "placeholder", attributes: [.foregroundColor: viewFactoryColor.inputPlaceholder])
        return input
    }
}
