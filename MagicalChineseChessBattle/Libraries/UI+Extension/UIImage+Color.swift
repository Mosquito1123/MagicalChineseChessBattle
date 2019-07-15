//
//  UIImage+Color.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension UIImage {
    
    public func image(blende color: UIColor, overlay: Bool = false) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
        defer {
            UIGraphicsEndImageContext()
        }
        
        color.setFill()
        UIRectFill(CGRect(origin: .zero, size: self.size))
        
        if overlay {
            self.draw(at: .zero, blendMode: .overlay, alpha: 1.0)
        }
        self.draw(at: .zero, blendMode: .destinationIn, alpha: 1.0)
        
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
}
