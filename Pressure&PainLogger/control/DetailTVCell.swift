//  https://github.com/k9doghouse/Pressure-PainLog
//  DetailTVCell.swift
//  Pressure&PainLogger
//
//  Created by murph on 8/17/19.
//  Copyright © 2019 k9doghouse. All rights reserved.
//

import UIKit

struct CellData {
    var title: String
}

class DetailTVCell: UITableViewCell {

    @IBOutlet weak var cellWithXIB: DetailTVCell!
    @IBOutlet weak var bigStringInTheCellLabel: UILabel!

    fileprivate let CELL_ID_01 = "CELL_ID_01"

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: CELL_ID_01)

        contentView.backgroundColor = #colorLiteral(red: 0.9993399978, green: 0.9973834157, blue: 0.7955064178, alpha: 1)
        contentView.tintColor = #colorLiteral(red: 0.007955873385, green: 0.2011905313, blue: 0.2015726268, alpha: 1)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    var cellData: CellData! {

        didSet {
            guard let cellData = cellData else { return }
            print("xx.  ",cellData.title)
            textLabel?.backgroundColor = #colorLiteral(red: 0.9993399978, green: 0.9973834157, blue: 0.7955064178, alpha: 1)
            textLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            textLabel?.shadowColor = #colorLiteral(red: 0, green: 0.7543517904, blue: 0.5842392621, alpha: 1)
            textLabel?.shadowOffset = CGSize(width: 1, height: 1)
            textLabel?.text = cellData.title
            print("yy.  ",textLabel?.text ?? "Empty")
        }
    }

}
