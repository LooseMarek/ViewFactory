//
//  Factory_Card_Test.swift
//  
//
//  Created by Marek Loose on 29/12/2021.
//

import XCTest
import SnapshotTesting

@testable import ViewFactory

class Factory_Card_Test: XCTestCase {
    
    var testFrameIphone8: CGRect!
    
    var viewFactoryColor: ViewFactoryColorProtocol!
    var constraintHelper: ConstraintHelper!
    var gradientHelper: GradientHelper!
    var labelFactory: LabelFactory!
    var inputFactory: InputFactory!
    var buttonFactory: ButtonFactory!
    var stackFactory: StackFactory!
    
    var cardFactory: CardFactory!
    
    override func setUp() {
        super.setUp()
        
        testFrameIphone8 = CGRect(x: 0, y: 0, width: ViewImageConfig.iPhone8.size!.width, height: 100.0)
        
        viewFactoryColor = DefaultViewFactoryColor()
        constraintHelper = ConstraintHelper()
        gradientHelper = GradientHelper()
        labelFactory = LabelFactory(viewFactoryColor: viewFactoryColor)
        inputFactory = InputFactory(constraintHelper: constraintHelper, viewFactoryColor: viewFactoryColor)
        buttonFactory = ButtonFactory(constraintHelper: constraintHelper, gradientHelper: gradientHelper, viewFactoryColor: viewFactoryColor)
        stackFactory = StackFactory(constraintHelper: constraintHelper)
        
        cardFactory = CardFactory(constraintHelper: constraintHelper, labelFactory: labelFactory, inputFactory: inputFactory, buttonFactory: buttonFactory, stackFactory: stackFactory, viewFactoryColor: viewFactoryColor)
    }

    override func tearDown() {
        testFrameIphone8 = nil
        
        viewFactoryColor = nil
        constraintHelper = nil
        gradientHelper = nil
        labelFactory = nil
        inputFactory = nil
        buttonFactory = nil
        stackFactory = nil
        
        cardFactory = nil
                
        super.tearDown()
    }
}
