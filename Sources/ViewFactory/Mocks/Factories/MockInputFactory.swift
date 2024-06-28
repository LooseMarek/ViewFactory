//
//  MockInputFactory.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 01/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public final class MockInputFactory: InputFactoryProtocol {
    public var constraintHelper: ConstraintHelperProtocol = MockConstraintHelper()
    public var viewFactoryColor: ViewFactoryColorProtocol = DefaultViewFactoryColor()
    
    public var numberCallsCount = 0
    public var textCallsCount = 0
    
    public init() {}
        
    public func number() -> UITextField {
        numberCallsCount += 1
        
        return MockUITextField()
    }
    
    public func text() -> UITextField {
        textCallsCount += 1
        
        return MockUITextField()
    }
}
