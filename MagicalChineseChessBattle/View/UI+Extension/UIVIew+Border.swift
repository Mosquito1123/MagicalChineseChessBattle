//
//  File.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension UIView {
    
    public func separtedBorder() {
        self.layer.cornerRadius = 5.0
        self.layer.borderWidth = 1.5
        self.layer.borderColor = UIColor.separtor.cgColor
        self.layer.masksToBounds = true
    }
    
}
