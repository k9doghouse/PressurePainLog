//  https://github.com/k9doghouse/Pressure-PainLog
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

    fileprivate let CELL_ID_01 = "CELL_ID_01"

    var theRow: Int = 3
    var passedData:[PointEntry] = []

    override func viewDidLoad() {

        super.viewDidLoad()

        setupTableView()
    }


    fileprivate func setupTableView() {
        tableView.register(UINib(nibName: "DetailTVCell", bundle: nil), forCellReuseIdentifier: CELL_ID_01)
    }


    override func numberOfSections(in tableView: UITableView) -> Int
        { return 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    { return passedData.count }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> DetailTVCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID_01, for: indexPath) as! DetailTVCell
        let cellData: String = passedData[indexPath.row].bigTitle

        cell.bigStringInTheCellLabel.text = cellData
        return cell
    }

    // pass some data to the detail view controller and navigation stuff
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is DetailViewController
        {
            let vc01 = segue.destination as? DetailViewController
            vc01?.detailData = passedData  // point entry array
        }
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        theRow = indexPath.row

        let vc01 = DetailViewController(nibName: "DetailTVCell", bundle: nil)

        vc01.detailData = passedData
        vc01.selectedRow = theRow
 
        self.performSegue(withIdentifier: "showThePainDetailScene", sender: self)
    }


}



















