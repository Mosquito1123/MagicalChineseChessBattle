//
//  NSObject+Class.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension NSObject {
    
    public class func instance(from string: String) -> Any? {
        return (NSClassFromString("\("MagicalChineseChessBattle").\(string)") as? NSObject.Type)?.init()
    }
    
}
