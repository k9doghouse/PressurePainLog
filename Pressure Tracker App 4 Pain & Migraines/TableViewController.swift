//
//  TableViewController.swift
//  tableview

//  Created by murph on 7/10/19.
//  Copyright © 2019 k9doghouse. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let data = DataCenter().atmosphereLayers

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func numberOfSections(in tableView: UITableView) -> Int
        { return 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        { return data.count }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL_ID", for: indexPath)
        /// configure the cell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

}
