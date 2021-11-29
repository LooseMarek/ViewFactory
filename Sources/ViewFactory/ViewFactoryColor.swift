//
//  ViewFactoryColor.swift
//  ViewFactory
//
//  Created by Marek Loose on 28/11/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public protocol ViewFactoryColorProtocol {
    var onNavigationBar: UIColor { get }
    
    var tabBar: UIColor { get }
    var onTabBar: UIColor { get }
    var onTabBarActive: UIColor { get }
    
    var labelHeader: UIColor { get }
    var labelInput: UIColor { get }
    var labelBody: UIColor { get }
    var labelHint: UIColor { get }
    
    var input: UIColor { get }
    var onInput: UIColor { get }
    var inputPlaceholder: UIColor { get }
    
    var buttonNegative: UIColor { get }
    var onButtonNegative: UIColor { get }
    var buttonFabGradientFirst: UIColor { get }
    var buttonFabGradientLast: UIColor { get }
    var onButtonFab: UIColor { get }
    
    var card: UIColor { get }
}

public class DefaultViewFactoryColor: ViewFactoryColorProtocol {
    
    public init() {}
    
    public var onNavigationBar: UIColor {
        return .onNavigationBar
    }
    
    public var tabBar: UIColor {
        return .tabBar
    }
    public var onTabBar: UIColor {
        return .onTabBar
    }
    public var onTabBarActive: UIColor {
        return .onTabBarActive
    }
    
    public var labelHeader: UIColor {
        return .labelHeader
    }
    public var labelInput: UIColor {
        return .labelInput
    }
    public var labelBody: UIColor {
        return .labelBody
    }
    public var labelHint: UIColor {
        return .labelHint
    }
    
    public var input: UIColor {
        return .input
    }
    public var onInput: UIColor {
        return .onInput
    }
    public var inputPlaceholder: UIColor {
        return .inputPlaceholder
    }
    
    public var buttonNegative: UIColor {
        return .buttonNegative
    }
    public var onButtonNegative: UIColor {
        return .onButtonNegative
    }
    public var buttonFabGradientFirst: UIColor {
        return .buttonFabGradientFirst
    }
    public var buttonFabGradientLast: UIColor {
        return .buttonFabGradientLast
    }
    public var onButtonFab: UIColor {
        return .onButtonFab
    }
    
    public var card: UIColor {
        return .card
    }
}
