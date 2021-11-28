//
//  GradientHelper.swift
//  ViewFactory
//
//  Created by Marek Loose on 25/01/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import Foundation
import UIKit

public protocol GradientHelperProtocol {
    func get(_ layerName: String, from view: UIView) -> CAGradientLayer?
    func removeAllGradientSublayers(from view: UIView)
    func diagonal(for view: UIView, colorTop: UIColor, colorBottom: UIColor, layerName: String) throws
    func custom(for view: UIView, frame: CGRect?, layerName: String, cornerRadius: CGFloat?, start: CAGradientLayer.Point, end: CAGradientLayer.Point, colors: [CGColor], type: CAGradientLayerType) throws
}

extension GradientHelperProtocol {
    func diagonal(for view: UIView, colorTop: UIColor, colorBottom: UIColor, layerName: String = "gradientDiagonal") throws {
        return try diagonal(for: view, colorTop: colorTop, colorBottom: colorBottom, layerName: layerName)
    }
    
    func custom(for view: UIView, frame: CGRect? = nil, layerName: String = "gradientCustom", cornerRadius: CGFloat? = nil, start: CAGradientLayer.Point = .topLeft, end: CAGradientLayer.Point = .bottomRight, colors: [CGColor], type: CAGradientLayerType = .radial) throws {
        return try custom(for: view, frame: frame, layerName: layerName, cornerRadius: cornerRadius, start: start, end: end, colors: colors, type: type)
    }
}

public enum GradientErrorEnum: Error {
    case layerAlreadyExist
}

public class GradientHelper: GradientHelperProtocol {
    
    public init() {}
    
    public func get(_ layerName: String, from view: UIView) -> CAGradientLayer? {
        if let sublayers = view.layer.sublayers {
            return sublayers.filter({ $0.name == layerName }).first as? CAGradientLayer
        }
        
        return nil
    }
    
    public func removeAllGradientSublayers(from view: UIView) {
        if let sublayers = view.layer.sublayers {
            for layer in sublayers {
                if layer is CAGradientLayer {
                     layer.removeFromSuperlayer()
                }
            }
        }
    }
    
    public func diagonal(for view: UIView, colorTop: UIColor, colorBottom: UIColor, layerName: String = "gradientDiagonal") throws {
        let colorTopCg = colorTop.cgColor
        let colorBottomCg = colorBottom.cgColor
        
        let isGradientLayerExist = get(layerName, from: view) != nil
        
        if (isGradientLayerExist) {
            throw GradientErrorEnum.layerAlreadyExist
        }
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.name = layerName
        gradientLayer.colors = [colorTopCg, colorBottomCg]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.25)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = view.bounds
                
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    public func custom(for view: UIView, frame: CGRect? = nil, layerName: String = "gradientCustom", cornerRadius: CGFloat? = nil, start: CAGradientLayer.Point = .topLeft, end: CAGradientLayer.Point = .bottomRight, colors: [CGColor], type: CAGradientLayerType = .radial) throws {
        
        let isGradientLayerExist = get(layerName, from: view) != nil
        
        if (isGradientLayerExist) {
            throw GradientErrorEnum.layerAlreadyExist
        }
        
        let gradientLayer = CAGradientLayer(start: start, end: end, colors: colors, type: type)
        gradientLayer.name = layerName
        gradientLayer.frame = frame != nil ? frame! : view.bounds
        gradientLayer.cornerRadius = cornerRadius != nil ? cornerRadius! : view.layer.cornerRadius

        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
