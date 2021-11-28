//
//  MockScrollFactory.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 04/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class MockScrollFactory: ScrollFactoryProtocol {
    public var constraintHelper: ConstraintHelperProtocol = MockConstraintHelper()
    
    public var mainCallsCount: Int = 0
    
    public init() {}
        
    public func main() -> ScrollView {
        mainCallsCount += 1
        
        return MockScrollView(constraintHelper: MockConstraintHelper())
    }
}
