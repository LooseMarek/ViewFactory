//
//  ViewFactory.swift
//  ViewFactory
//
//  Created by Marek Loose on 26/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

public protocol ViewFactoryProtocol {
    var styleHelper: StyleHelperProtocol { get }
    
    var label: LabelFactoryProtocol { get }
    var input: InputFactoryProtocol { get }
    var button: ButtonFactoryProtocol { get }
    var stack: StackFactoryProtocol { get }
    var scroll: ScrollFactoryProtocol { get }
    var table: TableFactoryProtocol { get }
}

public class ViewFactory: ViewFactoryProtocol {
    public var styleHelper: StyleHelperProtocol
    
    public var label: LabelFactoryProtocol
    public var input: InputFactoryProtocol
    public var button: ButtonFactoryProtocol
    public var stack: StackFactoryProtocol
    public var scroll: ScrollFactoryProtocol
    public var table: TableFactoryProtocol
    
    public init(viewFactoryColor: ViewFactoryColorProtocol = DefaultViewFactoryColor()) {
        styleHelper = StyleHelper(viewFactoryColor: viewFactoryColor)
        
        label = LabelFactory(viewFactoryColor: viewFactoryColor)
        input = InputFactory(constraintHelper: styleHelper.constraint, viewFactoryColor: viewFactoryColor)
        button = ButtonFactory(constraintHelper: styleHelper.constraint, gradientHelper: styleHelper.gradient, viewFactoryColor: viewFactoryColor)
        stack = StackFactory(constraintHelper: styleHelper.constraint)
        scroll = ScrollFactory(constraintHelper: styleHelper.constraint)
        table = TableFactory(constraintHelper: styleHelper.constraint)
    }
}
