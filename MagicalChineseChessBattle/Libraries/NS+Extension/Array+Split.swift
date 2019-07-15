//
//  Array+Split.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension Array {
    
    subscript (range: CountableClosedRange<Int>) -> [Element]? {
        guard range.lowerBound >= 0 && range.upperBound < self.endIndex && self.count > 0 else { return nil }
        
        var split: [Element] = []
        for index in range.sorted() {
            split.append(self[index])
        }
        return split
    }
    
}
