//
//  CellData.swift
//  FormGame
//
//  Created by Alex Orlov on 09.05.2022.
//

import Foundation
import UIKit

protocol CellData {

    var selectionClosure: (() -> Void)? { get set }

    func cellClass() -> UITableViewCell.Type
    func identifier() -> String
    func updatedCell(table: UITableView) -> UITableViewCell
}

extension CellData {
    func identifier() -> String {
        return String(describing: cellClass())
    }
}
