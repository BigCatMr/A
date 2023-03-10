//
//  DemoViewController.swift
//
//  Created by MambaYong on 2021/12/7.
//  Copyright © 2021 MambaYong. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    var callBack: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        btn.backgroundColor = .red
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
    }
    
    @objc func btnClick() {
        callBack?("啦啦啦啦啦")
    }
}
