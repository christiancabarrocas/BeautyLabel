//
//  BeautyLabel.swift
//  BeautyLabel
//
//  Created by Christian Cabarrocas on 31/1/15.
//  Copyright (c) 2015 ccs. All rights reserved.
//

import UIKit

@IBDesignable class BeautyLabel : UILabel {
    
    @IBInspectable var labelColor:UIColor = UIColor.clearColor()
    @IBInspectable var cornerRadius:CGFloat = 0
    @IBInspectable var cornerColor:UIColor = UIColor.clearColor()
    @IBInspectable var cornerWidth:CGFloat = 0
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    override init(frame:CGRect) {
        super.init(frame:frame)
        self.setup()
    }
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }
    
    func setup() {
        self.backgroundColor = labelColor
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = 1
        self.layer.borderColor = cornerColor.CGColor
        self.clipsToBounds = true
    }
}