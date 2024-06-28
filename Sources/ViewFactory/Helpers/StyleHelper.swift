//
//  StyleHelper.swift
//  ViewFactory
//
//  Created by Marek Loose on 26/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

public protocol StyleHelperProtocol {
    var constraint: ConstraintHelperProtocol { get }
    var gradient: GradientHelperProtocol { get }
    var navigationBar: NavigationBarHelperProtocol { get }
    var tabBar: TabBarHelperProtocol { get }
}

public final class StyleHelper: StyleHelperProtocol {
    public var constraint: ConstraintHelperProtocol
    public var gradient: GradientHelperProtocol
    public var navigationBar: NavigationBarHelperProtocol
    public var tabBar: TabBarHelperProtocol
    
    public init(viewFactoryColor: ViewFactoryColorProtocol) {
        constraint = ConstraintHelper()
        gradient = GradientHelper()
        navigationBar = NavigationBarHelper(viewFactoryColor: viewFactoryColor)
        tabBar = TabBarHelper(viewFactoryColor: viewFactoryColor)
    }
}
