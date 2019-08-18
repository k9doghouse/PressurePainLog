//  https://github.com/k9doghouse/Pressure-PainLog
//  DetailViewController.swift
//  Pressure&PainLogger
//
//  Created by murph on 8/17/19.
//  Copyright © 2019 k9doghouse. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var detailData:[PointEntry] = []
    var detailData01:[DataCenter] = []
    var whichRowWasTapped = 0

    @IBOutlet var painLevelPicker: UIPickerView!
    @IBOutlet weak var bigStringLabelFromSelection: UILabel!

    let painLevelArray = [0.0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10]

    override func viewDidLoad() {
        super.viewDidLoad()

        painLevelPicker.dataSource = self as? UIPickerViewDataSource
        painLevelPicker.delegate = self as? UIPickerViewDelegate
        print("\n  row was tapped from tableview: ",whichRowWasTapped)
    }

    // setup the picker view for pain labels
    func painLevelPicker(_ painLevelPicker: UIPickerView,
                            viewForRow row: Int,
                    forComponent component: Int,
                              reusing view: UIView?) -> UIView {

        let label: UILabel      = (view as? UILabel) ?? UILabel()
        label.backgroundColor   = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.textColor         = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        label.shadowColor       = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        label.shadowOffset      = CGSize(width: 1, height: 1)
        label.font              = UIFont(name: "Tamil Sangam MN", size: 10.0)
        label.textAlignment     = .center
        label.text              = painLevelArray[row].description
        return label
    }

    // MARK: - Picker
    func numberOfComponents(in painLevelPicker: UIPickerView) -> Int {
        return 1
    }

    func totalPainLabel(_ painLevelPicker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return painLevelArray.count
    }

    func totalPainLabel(_ painLevelPicker: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }

}
