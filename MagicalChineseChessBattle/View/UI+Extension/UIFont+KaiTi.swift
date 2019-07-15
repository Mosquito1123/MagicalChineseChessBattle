//
//  UIFont+KaiTi.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension UIFont {
    
    public class func kaitiFont(ofSize size: CGFloat) -> UIFont? {
        return UIFont(name: Macro.UI.fontName, size: size)
    }
    
}
