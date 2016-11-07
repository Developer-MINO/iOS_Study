//
//  SecondVC.swift
//  TodayExtension
//
//  Created by 김지섭 on 2016. 10. 31..
//  Copyright © 2016년 Study. All rights reserved.
//

import Foundation
import UIKit

class SecondVC : UIViewController {
    
//    UIScreen.mainScreen().brightness = CGFloat(0.5)
    @IBAction func back(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UIScreen.main.brightness = CGFloat(1)
    }
    
    
}
