//
//  UIView+Layout.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit
import SnapKit

extension UIView {
    
    // MARK: - Layout. if this view belongs to ViewController, you should to use self.layout.
    open var layout: ConstraintAttributesDSL {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.snp
        } else {
            return self.snp
        }
    }
    
}
