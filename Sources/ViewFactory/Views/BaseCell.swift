//
//  BaseCell.swift
//  ViewFactory
//
//  Created by Marek Loose on 30/11/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public typealias BaseCellMainView = UIView & BaseCellMainViewProtocol

public protocol BaseCellMainViewProtocol {
    func setStyle()
}

open class BaseCell: UITableViewCell {
    public class var identifier: String { return String(describing: self) }
    
    public var mainView: BaseCellMainView?
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required public init?(coder: NSCoder) {
        return nil
    }
    
    public func initCell(with mainView: BaseCellMainView, constraintHelper: ConstraintHelperProtocol) {
        resetSubviews()
        self.mainView = mainView
        setSubviews()
        setLayout(constraintHelper: constraintHelper)
        setStyle()
    }
    
    func resetSubviews() {
        for subview in contentView.subviews {
            subview.removeFromSuperview()
        }
    }
    
    // MARK: - UI Setters
    
    func setSubviews() {
        guard let mainView = mainView else {
            return
        }
        
        contentView.addSubview(mainView)
    }
    
    func setStyle() {
        selectionStyle = .none
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        
        guard let mainView = mainView else {
            return
        }
        
        mainView.setStyle()
    }
    
    func setLayout(constraintHelper: ConstraintHelperProtocol) {
        guard let mainView = mainView else {
            return
        }

        constraintHelper.setHorizontal(for: mainView, to: contentView.safeAreaLayoutGuide, at: .sixteen)
        constraintHelper.setTop(for: mainView, to: contentView.safeAreaLayoutGuide, at: .zero)
        constraintHelper.setBottom(for: mainView, to: contentView.safeAreaLayoutGuide, at: .sixteen)
    }
}
