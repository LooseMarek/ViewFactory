//
//  ScrollView.swift
//  ViewFactory
//
//  Created by Marek Loose on 01/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class ScrollView: UIScrollView {
    
    private(set) var scrollPage: UIView
    private(set) var scrollPageWidthConstaint: NSLayoutConstraint
    
    private let constraintHelper: ConstraintHelperProtocol
        
    public init(frame: CGRect = .zero, constraintHelper: ConstraintHelperProtocol) {
        self.constraintHelper = constraintHelper
        
        scrollPage = UIView()
        scrollPage.frame = frame
        scrollPageWidthConstaint = constraintHelper.setWidth(for: scrollPage, at: frame.width)
        
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    public func removeSubviews() {
        for scrollPageSubview in scrollPage.subviews {
            scrollPageSubview.removeFromSuperview()
        }
        
        for subview in subviews {
            subview.removeFromSuperview()
        }
    }
    
    public func setSubviews() {
        addSubview(scrollPage)
    }
    
    public func setLayout() {
        scrollPage.translatesAutoresizingMaskIntoConstraints = false
    
        constraintHelper.setAll(for: scrollPage, to: self, at: 0)
    }
    
    public func updateFrameForScrollPage(_ scrollPageFrame: CGRect) {
        scrollPage.frame = scrollPageFrame
        scrollPageWidthConstaint.constant = scrollPageFrame.width
    }
}
