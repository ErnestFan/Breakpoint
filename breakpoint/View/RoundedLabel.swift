//
//  RoundedLabel.swift
//  breakpoint
//
//  Created by Ernest Fan on 2018-04-26.
//  Copyright © 2018 ERF. All rights reserved.
//


import UIKit

@IBDesignable
class RoundedLabel: UILabel {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
        super.awakeFromNib()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
    }
}
