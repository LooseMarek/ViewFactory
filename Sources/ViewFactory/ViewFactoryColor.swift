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
    
    var tableRefresh: UIColor { get }
}

public final class DefaultViewFactoryColor: ViewFactoryColorProtocol {
    
    public init() {}
    
    public var onNavigationBar: UIColor { .onNavigationBar }
    
    public var tabBar: UIColor { .tabBar }
    public var onTabBar: UIColor { .onTabBar }
    public var onTabBarActive: UIColor { .onTabBarActive }
    
    public var labelHeader: UIColor { .labelHeader }
    public var labelInput: UIColor { .labelInput }
    public var labelBody: UIColor { .labelBody }
    public var labelHint: UIColor { .labelHint }
    
    public var input: UIColor { .input }
    public var onInput: UIColor { .onInput }
    public var inputPlaceholder: UIColor { .inputPlaceholder }
    
    public var buttonNegative: UIColor { .buttonNegative }
    public var onButtonNegative: UIColor { .onButtonNegative }
    public var buttonFabGradientFirst: UIColor { .buttonFabGradientFirst }
    public var buttonFabGradientLast: UIColor { .buttonFabGradientLast }
    public var onButtonFab: UIColor { .onButtonFab }
    
    public var card: UIColor { .card }
    
    public var tableRefresh: UIColor { .tableRefresh }
}
