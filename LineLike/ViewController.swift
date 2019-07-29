//
//  ViewController.swift
//  LineLike
//
//  Created by koki inoue on 2019/07/22.
//  Copyright © 2019 koki inoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.corporate
        
        label.text = "Hello World"
        label.textAlignment = .center
        label.textColor = UIColor.text
        
        view.addSubview(label)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLoad()
        label.frame =  view.bounds
    }
}

extension UIColor {
    //カラーコードで指定できるように追加
    convenience init(hex: String, alpha: CGFloat) {
        let v = Int("000000" + hex, radix: 16) ?? 0
        let r = CGFloat(v / Int(powf(256, 2)) % 256) / 255
        let g = CGFloat(v / Int(powf(256, 1)) % 256) / 255
        let b = CGFloat(v / Int(powf(256, 0)) % 256) / 255
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha, 0), 1))
    }
    
    convenience init(hex: String) {
        self.init(hex: hex, alpha: 1.0)
    }
    
    static let corporate = UIColor(hex: "00B900")
    static let text = UIColor(hex: "FFFFFF")
}

