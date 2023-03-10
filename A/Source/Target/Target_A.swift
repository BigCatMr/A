//
//  Target_ADemo.swift
//
//  Created by MambaYong on 2021/12/7.
//  Copyright © 2021 MambaYong. All rights reserved.
//

import UIKit

@objc class Target_A: NSObject {
    @objc func Action_demo(_ params:[AnyHashable:Any]) -> UIViewController? {
        guard let name = params["name"] as? String else { return nil }
        let callback = params["callback"] as? (String) -> Void
        let viewController = DemoViewController()
        viewController.callBack = callback
        return viewController
    }
}
