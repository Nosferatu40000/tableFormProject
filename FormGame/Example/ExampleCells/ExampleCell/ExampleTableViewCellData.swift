//
//  ExampleTableViewCellData.swift
//  FormGame
//
//  Created by Alex Orlov on 09.05.2022.
//

import UIKit

struct ExampleTableViewCellData: CellData {

    var title: String
    var selectionClosure: (() -> Void)? = nil
    
    func cellClass() -> UITableViewCell.Type {
        return ExampleTableViewCell.self
    }
    
    func updatedCell(table: UITableView) -> UITableViewCell {
        guard let cell = table.dequeueReusableCell(withIdentifier: identifier()) as? ExampleTableViewCell else {
            return UITableViewCell()
        }
        cell.textLabel?.text = title
        cell.selectionStyle = .none
        return cell
    }
}
