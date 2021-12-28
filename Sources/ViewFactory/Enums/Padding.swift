//
//  DimentionEnum.swift
//  ViewFactory
//
//  Created by Marek Loose on 15/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit
import CoreGraphics

public enum Padding {
    case zero, four, eight, sixteen, twentyFour
    case custom(CGFloat)
    
    public var value: CGFloat {
        switch self {
        case .zero:
          return 0
        case .four:
            return 4.0
        case .eight:
            return 8.0
        case .sixteen:
            return 16.0
        case .twentyFour:
            return 24.0
        case .custom(let customValue):
          return customValue
        }
    }
}
