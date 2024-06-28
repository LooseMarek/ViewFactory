//
//  MockUITextField.swift
//  WordTrackerUnitTests
//
//  Created by Marek Loose on 31/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public final class MockUITextField: UITextField {
    
    public var resignFirstResponderCallCount = 0
    
    public var mockResignFirstResponder = false
    
    public init() { super.init(frame: .zero) }
    
    required init?(coder: NSCoder) { nil }
    
    public override func resignFirstResponder() -> Bool {
        resignFirstResponderCallCount += 1
        return mockResignFirstResponder
    }
}
