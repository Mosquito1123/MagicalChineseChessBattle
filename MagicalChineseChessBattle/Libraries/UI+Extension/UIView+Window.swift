//
//  UIView+Window.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension UIWindow {
    
    public static var window: UIWindow? {
        return (UIApplication.shared.delegate as? AppDelegate)?.window
    }
    
}
