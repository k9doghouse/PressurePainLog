//
//  ChartViewController.swift
// Pressure Tracker App 4 Pain & Migraines
//
//  Created by murph on 7/10/19.
//  Copyright © 2019 k9doghouse. All rights reserved.
//

import UIKit

class ChartViewController: UIViewController {

    @IBOutlet weak var currentPressureLabel: UILabel!
    @IBOutlet weak var bigStringLabel: UILabel!

    override func viewDidLoad() {

        super.viewDidLoad()

        currentPressureLabel.text = DataCenter().bigStringTitleArray.last
        bigStringLabel.text =   DataCenter().bigStringTitleArray.first
    }


}

