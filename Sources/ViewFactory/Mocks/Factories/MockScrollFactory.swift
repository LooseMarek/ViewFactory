//
//  MockScrollFactory.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 04/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public final class MockScrollFactory: ScrollFactoryProtocol {
    public var constraintHelper: ConstraintHelperProtocol = MockConstraintHelper()
    
    public var mainCallsCount = 0
    
    public init() {}
        
    public func vertical() -> VerticalScrollView {
        mainCallsCount += 1
        
        return MockVerticalScrollView(constraintHelper: constraintHelper)
    }
}
