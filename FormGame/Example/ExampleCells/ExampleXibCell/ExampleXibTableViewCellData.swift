//
//  ExampleXibTableViewCellData.swift
//  FormGame
//
//  Created by Alex Orlov on 09.05.2022.
//

import UIKit

struct ExampleXibTableViewCellData: CellData {

    var title: String
    var subTitle: String
    var selectionClosure: (() -> Void)?
    
    func cellClass() -> UITableViewCell.Type {
        return ExampleXibTableViewCell.self
    }
    
    func updatedCell(table: UITableView) -> UITableViewCell {
        guard let cell = table.dequeueReusableCell(withIdentifier: identifier()) as? ExampleXibTableViewCell else {
            return UITableViewCell()
        }
        cell.title.text = title
        cell.subTitle.text = subTitle
        return cell
    }
}
