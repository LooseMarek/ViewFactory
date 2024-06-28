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
public enum Elevation: CGFloat {
    case zeroDp = 0 // Standard side sheet, Text button, Top app bar (resting elevation)
    case oneDp = 1.0 // Switch, Card (resting elevation), Search bar (resting elevation)
    case twoDp = 2.0 // Contained button (resting elevation)
    case threeDp = 3.0 // Refresh indicator Search bar (scrolled state)
    case fourDp = 4.0 // Top app bar (normal or scrolled state)
    case sixDp = 6.0 // Floating action button (FAB - resting elevation) Snackbar
    case eightDp = 8.0 // Contained button (pressed state), Card (when picked up), Menus and sub menus, Bottom app bar, Bottom navigation bar, Standard bottom sheet Standard side sheet
    case twelveDp = 12.0 // Floating action button (FAB - pressed)
    case sixteenDp = 16.0 // Navigation drawer, Modal bottom sheet Modal side sheet
    case twentyFourDp = 24.0 // Dialog
}
