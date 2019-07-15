//
//  UIButton+Golder.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension UIButton {
    
    public static var gold: UIButton {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(ResourcesProvider.shared.image(named: "button"), for: .normal)
        button.layer.masksToBounds = true
        button.isExclusiveTouch = true
        button.setTitleColor(UIColor.china, for: .normal)
        button.setTitleColor(UIColor.red, for: .highlighted)
        button.setTitleColor(UIColor.lightGray, for: .disabled)
        return button
    }
    
}
