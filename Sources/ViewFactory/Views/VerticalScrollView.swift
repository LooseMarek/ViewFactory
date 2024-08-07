//
//  VerticalScrollView.swift
//  ViewFactory
//
//  Created by Marek Loose on 01/02/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public class VerticalScrollView: UIScrollView {
    
    public var scrollPage: UIView
    private(set) var scrollPageWidthConstaint: NSLayoutConstraint
    
    private let constraintHelper: ConstraintHelperProtocol
        
    public init(frame: CGRect = .zero, constraintHelper: ConstraintHelperProtocol) {
        self.constraintHelper = constraintHelper
        
        scrollPage = UIView()
        scrollPage.frame = frame
        scrollPageWidthConstaint = constraintHelper.setWidth(for: scrollPage, at: frame.width)
        
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) { nil }
    
    public func initSubviews(_ subviews: [UIView], in parent: UIView, horizontalPadding: Padding, verticalPaddings: [Padding]) throws {
        removeSubviews()
        setSubviews(subviews, in: parent)
        try setLayout(subviews: subviews, parent: parent, horizontalPadding: horizontalPadding, verticalPaddings: verticalPaddings)
    }
    
    func removeSubviews() {
        _ = scrollPage.subviews.map { $0.removeFromSuperview() }
        _ = subviews.map { $0.removeFromSuperview() }
    }
    
    func setSubviews(_ subviews: [UIView], in parent: UIView) {
        parent.addSubview(self)
        addSubview(scrollPage)
        _ = subviews.map { scrollPage.addSubview($0) }
    }
    
    func setLayout(subviews: [UIView], parent: UIView, horizontalPadding: Padding, verticalPaddings: [Padding]) throws {
        scrollPage.translatesAutoresizingMaskIntoConstraints = false
    
        constraintHelper.setAll(for: self, to: parent.safeAreaLayoutGuide, at: .zero)
        constraintHelper.setAll(for: scrollPage, to: self, at: .zero)
        updateFrameForScrollPage(parent.frame)
        
        try constraintHelper.setStack(for: subviews, to: scrollPage, horizontalAt: horizontalPadding, verticalAt: verticalPaddings)
    }
    
    func updateFrameForScrollPage(_ scrollPageFrame: CGRect) {
        scrollPage.frame = scrollPageFrame
        scrollPageWidthConstaint.constant = scrollPageFrame.width
    }
}
