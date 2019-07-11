//
//  DataCenter.swift
// Pressure Tracker App 4 Pain & Migraines
//
//  Created by murph on 7/11/19.
//  Copyright © 2019 k9doghouse. All rights reserved.
//

import UIKit

struct DataCenter: Codable {

    var pressureValue:       Double = 1002.77
    var PressureString:      String = "1002.77 mb FAILS"

    var bigStringTitle:      String = "bigStringTitlexx"
    var bigStringTitleArray: Array  = ["bigStringTitle00", "bigStringTitle01", "bigStringTitle02", "bigStringTitle03"]

    var painLevel:           Float = 7.5
    var description:         String = """
                                    the pain is undescribable!
                                    neurophy
                                    back, neck, shoulders, hips knees, & feet.
                                    """
}

