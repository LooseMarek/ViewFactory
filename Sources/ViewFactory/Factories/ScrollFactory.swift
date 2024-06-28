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
    
    func vertical() -> VerticalScrollView
}

public final class ScrollFactory: ScrollFactoryProtocol {
    
    public var constraintHelper: ConstraintHelperProtocol
    
    public init(constraintHelper: ConstraintHelperProtocol) {
        self.constraintHelper = constraintHelper
    }
    
    public func vertical() -> VerticalScrollView {
        let scrollView = VerticalScrollView(constraintHelper: constraintHelper)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }
}
