//
//  ScrollFactory.swift
//  ViewFactory
//
//  Created by Marek Loose on 17/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit

public protocol ScrollFactoryProtocol {
    var constraintHelper: ConstraintHelperProtocol { get }
    
    func main() -> ScrollView
}

public class ScrollFactory: ScrollFactoryProtocol {
    
    public var constraintHelper: ConstraintHelperProtocol
    
    public init(constraintHelper: ConstraintHelperProtocol) {
        self.constraintHelper = constraintHelper
    }
    
    public func main() -> ScrollView {
        let scrollView = ScrollView(constraintHelper: constraintHelper)
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        return scrollView
    }
}
