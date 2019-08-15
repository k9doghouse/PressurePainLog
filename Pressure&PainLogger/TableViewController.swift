//
//  TableViewController.swift
//  PressureTracker2
//
//  thanks to: Reinder, https://learnappmaking.com/pass-data-view-controllers-swift-how-to/
//
//  Created by murph on 7/10/19.
//  Copyright © 2019 k9doghouse. All rights absurd.
//

import UIKit

class TableViewController: UITableViewController {

    fileprivate let CELL_ID = "CELL_ID"
    var passedData:[PointEntry] = []
    var passedData01:[DataCenter] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: CELL_ID)

        let numberOfSections = self.tableView.numberOfSections
        let numberOfRows = self.tableView.numberOfRows(inSection: numberOfSections-1)
        let indexPath = IndexPath(row: numberOfRows-1 , section: numberOfSections-1)

        self.tableView.scrollToRow(at: indexPath, at: UITableView.ScrollPosition.middle, animated: true)
    }

    override func numberOfSections(in tableView: UITableView) -> Int
    { return 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    { return passedData.count }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID)
        cell?.textLabel?.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        cell?.backgroundColor      = #colorLiteral(red: 0.1184270903, green: 0.1533128619, blue: 0.128531754, alpha: 1)
        cell?.textLabel?.text      = passedData[indexPath.row].bigTitle

        return cell!
    }

}
