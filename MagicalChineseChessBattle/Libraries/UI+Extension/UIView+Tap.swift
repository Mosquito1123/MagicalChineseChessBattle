//
//  UIView+Tap.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

// MARK: - TapAction.
extension UIView {
    
    public func addTapTarget(_ target: Any?, action: Selector) {
        let tap = UITapGestureRecognizer(target: target, action: action)
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true
    }
    
}
