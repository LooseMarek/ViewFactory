//
//  MockVerticalScrollView.swift
//  WordTrackerUnitTests
//
//  Created by Marek Loose on 04/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class MockVerticalScrollView: VerticalScrollView {
    
    public var initSubviewsCallCount: Int = 0
    
    public var mockScrollPageFrame: CGRect?
    
    public init(constraintHelper: ConstraintHelperProtocol) {
        super.init(constraintHelper: constraintHelper)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    public override func initSubviews(_ subviews: [UIView], in parent: UIView, horizontalPadding: Padding, verticalPaddings: [Padding]) {
        initSubviewsCallCount += 1
    }
}
