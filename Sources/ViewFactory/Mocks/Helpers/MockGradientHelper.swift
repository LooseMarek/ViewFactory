//
//  MockGradientHelper.swift
//  ViewFactoryTests
//
//  Created by Marek Loose on 31/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class MockGradientHelper: GradientHelperProtocol {
    
    public var getCallsCount: Int = 0
    public var removeAllGradientSublayersCallsCount: Int = 0
    public var diagonalCallsCount: Int = 0
    public var customCallsCount: Int = 0

    public var mockLayerName: String?
    public var mockFromView: UIView?
    public var mockForView: UIView?
    public var mockGradientLayer: CAGradientLayer?
    
    public init() {}

    public func get(_ layerName: String, from view: UIView) -> CAGradientLayer? {
        getCallsCount += 1
        
        mockLayerName = layerName
        mockFromView = view
        
        return mockGradientLayer
    }
    
    public func removeAllGradientSublayers(from view: UIView) {
        removeAllGradientSublayersCallsCount += 1

        mockFromView = view
    }
    
    public func diagonal(for view: UIView, colorTop: UIColor, colorBottom: UIColor, layerName: String) throws {
        diagonalCallsCount += 1

        mockForView = view
        mockLayerName = layerName
    }
    
    public func custom(for view: UIView, frame: CGRect?, layerName: String, cornerRadius: CGFloat?, start: CAGradientLayer.Point, end: CAGradientLayer.Point, colors: [CGColor], type: CAGradientLayerType) throws {
        customCallsCount += 1

        mockForView = view
        mockLayerName = layerName
    }
}
