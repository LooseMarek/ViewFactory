//
//  Elevation.swift
//  ViewFactory
//
//  Created by Marek Loose on 15/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit

/**
 Use to get elevation for the views.
 
 - See Also: https://material.io/design/environment/elevation.html#default-elevations
 */
public enum Elevation {
    case zeroDp, oneDp, twoDp, threeDp, fourDp, sixDp, eightDp, twelveDp, sixteenDp, twentyFourDp
    case custom(CGFloat)
    
    public var value: CGFloat {
        switch self {
        case .zeroDp: // Standard side sheet, Text button, Top app bar (resting elevation)
          return 0
        case .oneDp: // Switch, Card (resting elevation), Search bar (resting elevation)
            return 1.0
        case .twoDp: // Contained button (resting elevation)
            return 2.0
        case .threeDp: // Refresh indicator Search bar (scrolled state)
            return 3.0
        case .fourDp: // Top app bar (normal or scrolled state)
            return 4.0
        case .sixDp: // Floating action button (FAB - resting elevation) Snackbar
            return 6.0
        case .eightDp: // Contained button (pressed state), Card (when picked up), Menus and sub menus, Bottom app bar, Bottom navigation bar, Standard bottom sheet Standard side sheet
            return 8.0
        case .twelveDp: // Floating action button (FAB - pressed)
            return 12.0
        case .sixteenDp: // Navigation drawer, Modal bottom sheet Modal side sheet
            return 16.0
        case .twentyFourDp: // Dialog
            return 24.0
        case .custom(let customValue):
          return customValue
        }
    }
}
