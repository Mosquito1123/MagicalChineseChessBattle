//
//  Value+Meta.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension DispatchTime: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int) {
        self = .now() + .seconds(value)
    }
    
}

extension Int {
    
    public var dispatchTime: DispatchTime {
        return DispatchTime(integerLiteral: self)
    }
    
}

extension TimeInterval {
    
    public var intValue: Int {
        return Int(self)
    }
    
}
