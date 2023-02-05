//
//  ExampleVC.swift
//  FormGame
//
//  Created by Alex Orlov on 09.05.2022.
//

import UIKit

class ExampleVC: ParentViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Example"
        dataList = makeData()
    }

    func makeData() -> [SectionData] {
        return SectionData()
        <<< ExampleTableViewCellData(title: "Один")
        <<< ExampleTableViewCellData(title: "Два")
        <<< ExampleTableViewCellData(title: "Три")
    + SectionData()
        <<< ExampleXibTableViewCellData(
            title: "Luke",
            subTitle: "Skywalker",
            selectionClosure: {
                print("may the 4th be with you")
            }
        )
        <<< ExampleXibTableViewCellData(
            title: "Очень длинная ебанина прям такая шокапец чтоб блять прям вот много текста",
            subTitle: "Oooooooooooooh long John",
            selectionClosure: {
                print("reloaded")
            }
        )
        <<< ExampleXibTableViewCellData(
            title: "TRY",
            subTitle: "NOT 2 CRY",
            selectionClosure: {
                print("Cry")
            }
        )
    }
}
