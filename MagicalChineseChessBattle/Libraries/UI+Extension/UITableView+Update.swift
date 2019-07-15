//
//  UITableView+Update.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension UITableView {
    
    public func insert(indexPaths: [IndexPath]) {
        guard indexPaths.count > 0 else { return }
        
        self.beginUpdates()
        self.insertRows(at: indexPaths, with: .automatic)
        self.endUpdates()
    }
    
    public func delete(indexPaths: [IndexPath]) {
        guard indexPaths.count > 0 else { return }
        
        self.beginUpdates()
        self.deleteRows(at: indexPaths, with: .automatic)
        self.endUpdates()
    }
    
}
