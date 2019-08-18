//  https://github.com/k9doghouse/Pressure-PainLog
//  DetailViewController.swift
//  Pressure&PainLogger
//
//  Created by murph on 8/17/19.
//  Copyright © 2019 k9doghouse. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    /// IBOutlets
    @IBOutlet weak var painValueLabel: UILabel!
    @IBOutlet weak var bigStringLabelFromSelection: UILabel!
    @IBOutlet weak var stepper: UIStepper!

    var detailData:[PointEntry] = []
    var selectedRow:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        bigStringLabelFromSelection.text = detailData[selectedRow].bigTitle
        
        stepper.value        = 05.5
        stepper.minimumValue = 00.0
        stepper.maximumValue = 10.0
        stepper.stepValue    = 00.5
        
        stepper.addTarget(self,
                          action: #selector(stepperTapped),
                             for: .touchUpInside)

        let numberText: String = String(stepper.value)
        print("  number text: : ", numberText)
        painValueLabel.text = numberText
    }

    /// IBActions
    @IBAction func stepperTapped(_ sender: Any) {
        let step = sender as! UIStepper
        let numberAsText = String(step.value)

//        print("stepperTapped: ", stepperTapped.value); print("step: ", step.value); print("numberAsText: ", numberAsText)

        painValueLabel.text = numberAsText
    }

    
}
