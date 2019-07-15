//
//  Value+Random.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

// MARK: - Random
extension Double {
    public static var random: Double {
        return Double(arc4random()) / Double(UInt32.max)
    }
}

extension Float {
    public static var random: Float {
        return Float(Double.random)
    }
}

extension CGFloat {
    public static var random: CGFloat {
        return CGFloat(Double.random)
    }
}
