//
//  Value+Map.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

// MARK: - Map. target <- Option(value)
infix operator <-

public protocol Mappable {
    static func <-(_ left: inout Self, _ right: Any?)
}

extension Mappable {
    
    public static func <-(_ left: inout Self, _ right: Any?) {
        guard let value = right as? Self else { return }
        left = value
    }
    
}

// MARK: - Structs conform Mappable
extension Bool: Mappable {
    
}

extension Int: Mappable {
    
}

extension UInt64: Mappable {
    
}

extension String: Mappable {
    
}

extension Dictionary: Mappable {
    
}
