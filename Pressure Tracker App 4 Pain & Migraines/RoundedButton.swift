//
//  RoundedButton.swift
//  MMWW2
//
//  Created by murph on 9/21/18. 
//

import UIKit

@IBDesignable
public class RoundedButton : UIButton
{
    override public func layoutSubviews()
    {
        super.layoutSubviews()
        updateCornerRadiusAndBorder()
    }

    var rounded : Bool = true
        { didSet { updateCornerRadiusAndBorder() } }

    func updateCornerRadiusAndBorder()
    { layer.cornerRadius = rounded ? frame.size.height / 8 : 0
      layer.borderWidth = 1
      layer.borderColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
      layer.backgroundColor = #colorLiteral(red: 0.3287047744, green: 0.4079003334, blue: 0.3582156301, alpha: 1)
    } }
