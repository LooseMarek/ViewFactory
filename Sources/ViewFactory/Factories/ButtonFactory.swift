//
//  ButtonFactory.swift
//  ViewFactory
//
//  Created by Marek Loose on 15/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit

public protocol ButtonFactoryProtocol {
    var constraintHelper: ConstraintHelperProtocol { get }
    var gradientHelper: GradientHelperProtocol { get }
    var viewFactoryColor: ViewFactoryColorProtocol { get }
    
    func negative() -> UIButton
    func mainFab() -> UIButton
    func miniFab() -> UIButton
}

public class ButtonFactory: ButtonFactoryProtocol {
    
    public var constraintHelper: ConstraintHelperProtocol
    public var gradientHelper: GradientHelperProtocol
    public var viewFactoryColor: ViewFactoryColorProtocol
    
    public init(constraintHelper: ConstraintHelperProtocol, gradientHelper: GradientHelperProtocol, viewFactoryColor: ViewFactoryColorProtocol) {
        self.constraintHelper = constraintHelper
        self.gradientHelper = gradientHelper
        self.viewFactoryColor = viewFactoryColor
    }
    
    // TODO: create basic buttons such: accent, neutral, disabled?
    
    public func negative() -> UIButton {
        let button = UIButton()
        
        let frame: CGRect = CGRect(x: 0, y: 0, width: 40, height: 40)
        button.frame = frame
        _ = constraintHelper.setHeight(for: button, at: 40)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitleColor(viewFactoryColor.onButtonNegative, for: .normal)
        button.tintColor = viewFactoryColor.onButtonNegative
        button.layer.cornerRadius = 8.0
        button.layer.zPosition = Elevation.sixDp.value
        button.layer.borderWidth = 1
        button.layer.borderColor = viewFactoryColor.onButtonNegative.cgColor
        button.backgroundColor = viewFactoryColor.buttonNegative

        return button
    }
    
    public func mainFab() -> UIButton {
        let button: UIButton = commonFab(size: 40.0)
        let config = UIImage.SymbolConfiguration(pointSize: 24.0)
        button.setPreferredSymbolConfiguration(config, forImageIn: .normal)
        
        return button
    }
    
    public func miniFab() -> UIButton {
        let button: UIButton = commonFab(size: 32.0)
        let config = UIImage.SymbolConfiguration(pointSize: 16.0)
        button.setPreferredSymbolConfiguration(config, forImageIn: .normal)
        
        return button
    }
    
    private func commonFab(size: CGFloat) -> UIButton {
        let button = UIButton()
                
        let frame: CGRect = CGRect(x: 0, y: 0, width: size, height: size)
        
        button.frame = frame
        _ = constraintHelper.setHeight(for: button, at: size)
        _ = constraintHelper.setWidth(for: button, at: size)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let cornerRadius = button.frame.width / 2

        button.layer.cornerRadius = cornerRadius
        
        button.setTitleColor(viewFactoryColor.onButtonFab, for: .normal)
        button.tintColor = viewFactoryColor.onButtonFab
        button.layer.zPosition = Elevation.sixDp.value

        let firstCgColor: CGColor = viewFactoryColor.buttonFabGradientFirst.cgColor
        let lastCgColor: CGColor = viewFactoryColor.buttonFabGradientLast.cgColor
        
        try! gradientHelper.custom(for: button, frame: frame, cornerRadius: cornerRadius, colors: [firstCgColor, lastCgColor])

        // Move icon to front as it's getting cover by the gradient
        if let imageView = button.imageView {
            button.bringSubviewToFront(imageView)
        }

        return button
    }
}

