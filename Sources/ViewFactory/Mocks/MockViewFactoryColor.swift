//
//  File.swift
//  
//
//  Created by Marek Loose on 10/12/2021.
//

import UIKit

class MockViewFactoryColor: ViewFactoryColorProtocol {
    var onNavigationBar: UIColor { .darkGray }
    
    var tabBar: UIColor { .darkGray }
    var onTabBar: UIColor { .gray }
    var onTabBarActive: UIColor { .white }
    
    var labelHeader: UIColor { .black }
    var labelInput: UIColor { .brown }
    var labelBody: UIColor { .blue }
    var labelHint: UIColor { .orange }
    
    var input: UIColor { .green }
    var onInput: UIColor { .black }
    var inputPlaceholder: UIColor { .gray }
    
    var buttonNegative: UIColor { .red }
    var onButtonNegative: UIColor { .white }
    var buttonFabGradientFirst: UIColor { .yellow }
    var buttonFabGradientLast: UIColor { .orange }
    var onButtonFab: UIColor { .white }
    
    var card: UIColor { .lightGray }
    
    var tableRefresh: UIColor { .green }
}
