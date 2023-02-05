//
//  ExampleXibTableViewCell.swift
//  FormGame
//
//  Created by Alex Orlov on 09.05.2022.
//

import UIKit

class ExampleXibTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            accessoryType = .checkmark
        } else {
            accessoryType = .none
        }
    }
}
