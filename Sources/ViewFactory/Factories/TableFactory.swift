//
//  TableFactory.swift
//  ViewFactory
//
//  Created by Marek Loose on 20/03/2021.
//  Copyright © 2021 Marek Loose. All rights reserved.
//

import UIKit

public protocol TableFactoryProtocol {
    var constraintHelper: ConstraintHelperProtocol { get }
    func main(frame: CGRect) -> UITableView
    func refresh() -> UIRefreshControl
}

public extension TableFactoryProtocol {
    func main(frame: CGRect = .zero) -> UITableView {
        return main(frame: frame)
    }
}

public final class TableFactory: TableFactoryProtocol {
    
    public var constraintHelper: ConstraintHelperProtocol
    
    public init(constraintHelper: ConstraintHelperProtocol) {
        self.constraintHelper = constraintHelper
    }
    
    public func main(frame: CGRect = .zero) -> UITableView {
        let table = UITableView(frame: frame)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .clear
        table.separatorStyle = .none
        return table
    }
    
    public func refresh() -> UIRefreshControl {
        let refresh = UIRefreshControl()
        refresh.tintColor = .tableRefresh
        return refresh
    }
}
