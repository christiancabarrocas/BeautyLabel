//
//  BeautyLabel.swift
//  BeautyLabel
//
//  Created by Christian Cabarrocas on 31/1/15.
//  Copyright (c) 2015 ccs. All rights reserved.
//

import Foundation
import UIKit

class BeautyLabel : UILabel {

    
    required init(coder aDecoder: NSCoder) {
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
        self.text = self.text
        self.textColor = self.textColor
        self.font = self.font
    }
}