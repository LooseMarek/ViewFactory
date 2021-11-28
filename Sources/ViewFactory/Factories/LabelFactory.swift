//
//  LabelFactory.swift
//  ViewFactory
//
//  Created by Marek Loose on 14/11/2020.
//  Copyright © 2020 Marek Loose. All rights reserved.
//

import UIKit

public protocol LabelFactoryProtocol {
    var viewFactoryColor: ViewFactoryColorProtocol { get }

    func header(alignment: NSTextAlignment) -> UILabel
    func inputLabel(alignment: NSTextAlignment) -> UILabel
    func body(alignment: NSTextAlignment) -> UILabel
    func hint(alignment: NSTextAlignment) -> UILabel
}

public extension LabelFactoryProtocol {
    func header(alignment: NSTextAlignment = .left) -> UILabel {
        return header(alignment: alignment)
    }
    
    func inputLabel(alignment: NSTextAlignment = .left) -> UILabel {
        return inputLabel(alignment: alignment)
    }
    
    func body(alignment: NSTextAlignment = .left) -> UILabel {
        return body(alignment: alignment)
    }
    
    func hint(alignment: NSTextAlignment = .left) -> UILabel {
        return hint(alignment: alignment)
    }
}

public class LabelFactory: LabelFactoryProtocol {
    
    public var viewFactoryColor: ViewFactoryColorProtocol
    
    public init(viewFactoryColor: ViewFactoryColorProtocol) {
        self.viewFactoryColor = viewFactoryColor
    }
    
    public func header(alignment: NSTextAlignment = .left) -> UILabel {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textAlignment = alignment
        label.textColor = viewFactoryColor.labelHeader
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }
    
    public func inputLabel(alignment: NSTextAlignment = .left) -> UILabel {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .caption1)
        label.textAlignment = alignment
        label.textColor = viewFactoryColor.labelInput
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }
    
    public func body(alignment: NSTextAlignment = .left) -> UILabel {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textAlignment = alignment
        label.textColor = viewFactoryColor.labelBody
        label.numberOfLines = 0

        return label
    }
    
    public func hint(alignment: NSTextAlignment = .left) -> UILabel {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .caption1)
        label.textAlignment = alignment
        label.textColor = viewFactoryColor.labelHint
        label.numberOfLines = 0

        return label
    }
}
