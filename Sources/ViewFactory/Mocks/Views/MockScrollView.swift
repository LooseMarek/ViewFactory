//
//  MockScrollView.swift
//  WordTrackerUnitTests
//
//  Created by Marek Loose on 04/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class MockScrollView: VerticalScrollView {
    
    public var initSubviewsCallCount: Int = 0
    public var removeSubviewsCallCount: Int = 0
    public var setSubviewsCallCount: Int = 0
    public var setLayoutCallCount: Int = 0
    public var updateFrameForScrollPageCallCount: Int = 0
    
    public var mockScrollPageFrame: CGRect?
    
    public init(constraintHelper: ConstraintHelperProtocol) {
        super.init(constraintHelper: constraintHelper)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    public override func initSubviews(_ subviews: [UIView], in parent: UIView, horizontalPadding: CGFloat, verticalPaddings: [CGFloat]) {
        initSubviewsCallCount += 1
    }
    
    override func removeSubviews() {
        removeSubviewsCallCount += 1
    }
    
    override func setSubviews(_ subviews: [UIView], in parent: UIView) {
        setSubviewsCallCount += 1
    }
    
    override func setLayout(subviews: [UIView], parent: UIView, horizontalPadding: CGFloat, verticalPaddings: [CGFloat]) {
        setLayoutCallCount += 1
    }
    
    override func updateFrameForScrollPage(_ scrollPageFrame: CGRect) {
        updateFrameForScrollPageCallCount += 1
        
        mockScrollPageFrame = scrollPageFrame
    }
}
