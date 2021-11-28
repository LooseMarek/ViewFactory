//
//  Extension_UIColor_Test.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 24/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import XCTest

@testable import ViewFactory

class Extension_UIColor_Test: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func testStaticColors_WhenUsed_ShouldReturnUIColors() {
        // Given
        // N/A

        // When
        let onNavigationBar: UIColor = .onNavigationBar
        let tabBar: UIColor = .tabBar
        let onTabBar: UIColor = .onTabBar
        let onTabBarActive: UIColor = .onTabBarActive
        let labelHeader: UIColor = .labelHeader
        let labelInput: UIColor = .labelInput
        let labelBody: UIColor = .labelBody
        let labelHint: UIColor = .labelHint
        let input: UIColor = .input
        let onInput: UIColor = .onInput
        let inputPlaceholder: UIColor = .inputPlaceholder
        let buttonNegative: UIColor = .buttonNegative
        let onButtonNegative: UIColor = .onButtonNegative
        let buttonFabGradientFirst: UIColor = .buttonFabGradientFirst
        let buttonFabGradientLast: UIColor = .buttonFabGradientLast
        let onButtonFab: UIColor = .onButtonFab

        // Then
        XCTAssertNotNil(onNavigationBar)
        XCTAssertNotNil(tabBar)
        XCTAssertNotNil(onTabBar)
        XCTAssertNotNil(onTabBarActive)
        XCTAssertNotNil(labelHeader)
        XCTAssertNotNil(labelInput)
        XCTAssertNotNil(labelBody)
        XCTAssertNotNil(labelHint)
        XCTAssertNotNil(input)
        XCTAssertNotNil(onInput)
        XCTAssertNotNil(inputPlaceholder)
        XCTAssertNotNil(buttonNegative)
        XCTAssertNotNil(onButtonNegative)
        XCTAssertNotNil(buttonFabGradientFirst)
        XCTAssertNotNil(buttonFabGradientLast)
        XCTAssertNotNil(onButtonFab)
    }
}
