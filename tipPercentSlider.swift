//
//  tipPercentSlider.swift
//  TipCalculator
//
//  Created by Mandy Chen on 8/12/17.
//  Copyright © 2017 Mandy Chen. All rights reserved.
//

import UIKit

@IBDesignable
class tipPercentSlider: UISlider {

    @IBInspectable var thumbImage: UIImage?{
        didSet {
            setThumbImage(thumbImage, for: .normal)
        }
    }
    
    @IBInspectable var highlightedThumbImage: UIImage?{
        didSet {
            setThumbImage(highlightedThumbImage, for: .highlighted)
        }
    }

}
