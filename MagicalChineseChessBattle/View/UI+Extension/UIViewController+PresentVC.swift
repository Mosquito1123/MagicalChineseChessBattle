//
//  UIViewController+PresentVC.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension UIViewController {
    
    public func present(_ viewControllerToPresent: String, completion: (() -> Void)? = nil) {
        LoadingAlertView.show(in: self.view) {
            if let vc = NSObject.instance(from: viewControllerToPresent) as? UIViewController {
                self.present(vc, animated: true) {
                    LoadingAlertView.hide(animation: false, completion: completion)
                }
            } else {
//                LoadingAlertView.hide(animation: false, completion: completion)
//                fatalError("not found class named '\(viewControllerToPresent)'")
            }
        }
    }
    
    public func present(_ viewControllerToPresent: UIViewController) {
        LoadingAlertView.show(in: self.view) {
            self.present(viewControllerToPresent, animated: true) {
                LoadingAlertView.hide(animation: false, completion: nil)
            }
        }
    }
    
    public func dismiss(completion: (() -> Void)? = nil) {
        LoadingAlertView.show(in: self.view) {
            self.dismiss(animated: true) {
                LoadingAlertView.hide(animation: false, completion: completion)
            }
        }
    }
    
}
