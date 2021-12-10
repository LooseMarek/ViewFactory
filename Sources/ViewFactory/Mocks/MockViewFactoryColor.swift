//
//  File.swift
//  
//
//  Created by Marek Loose on 10/12/2021.
//

import UIKit
import ViewFactory

class MockViewFactoryColor: ViewFactoryColorProtocol {
    var onNavigationBar: UIColor {
        return .darkGray
    }
    
    var tabBar: UIColor {
        return .darkGray
    }
    var onTabBar: UIColor {
        return .gray
    }
    var onTabBarActive: UIColor {
        return .white
    }
    
    var labelHeader: UIColor {
        return .black
    }
    var labelInput: UIColor {
        return .brown
    }
    var labelBody: UIColor {
        return .blue
    }
    var labelHint: UIColor {
        return .orange
    }
    
    var input: UIColor {
        return .green
    }
    var onInput: UIColor {
        return .black
    }
    var inputPlaceholder: UIColor {
        return .gray
    }
    
    var buttonNegative: UIColor {
        return .red
    }
    var onButtonNegative: UIColor {
        return .white
    }
    var buttonFabGradientFirst: UIColor {
        return .yellow
    }
    var buttonFabGradientLast: UIColor {
        return .orange
    }
    var onButtonFab: UIColor {
        return .white
    }
    
    var card: UIColor {
        return .lightGray
    }
    
    var tableRefresh: UIColor {
        return .green
    }
}
