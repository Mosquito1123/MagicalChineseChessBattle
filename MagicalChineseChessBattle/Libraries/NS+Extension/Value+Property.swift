//
//  Value+Property.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension Int {
    
    public var isEven: Bool {
        return (self & 1) == 0
    }
    
}

extension Date {
    
    public static var time: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyMMdd HH:mm:ss"
        return formatter.string(from: Date())
    }
    
}

extension String {
    
    public var noSpace: String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    
    public static var uuid: String {
        return UUID().uuidString
    }
    
    public static var empty: String {
        return ""
    }
    
}

extension Bool {
    
    public var rawValue: Int {
        return self ? 1 : 0
    }
    
}
