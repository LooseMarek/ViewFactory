//
//  MockScrollView.swift
//  WordTrackerUnitTests
//
//  Created by Marek Loose on 04/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class MockScrollView: ScrollView {
    
    public var removeSubviewsCallCount: Int = 0
    public var setSubviewsCallCount: Int = 0
    public var setLayoutCallCount: Int = 0
    public var updateFrameForScrollPageCallCount: Int = 0
    
    public var mockScrollPageFrame: CGRect?
    
    public init() {}
    
    public override func removeSubviews() {
        removeSubviewsCallCount += 1
    }
    
    public override func setSubviews() {
        setSubviewsCallCount += 1
    }
    
    public override func setLayout() {
        setLayoutCallCount += 1
    }
    
    public override func updateFrameForScrollPage(_ scrollPageFrame: CGRect) {
        updateFrameForScrollPageCallCount += 1
        
        mockScrollPageFrame = scrollPageFrame
    }
}
