//
//  secondViewController.swift
//  BMI Calculator
//
//  Created by Naman Dhiman on 22/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var bmiVal:String = "0.0";
    
    override func viewDidLoad() {
        
        //created a class using programming without storyboard and routed here
        view.backgroundColor = UIColor.green
        let bmi = UILabel();
        bmi.text = bmiVal;
        bmi.textColor = UIColor.white
        bmi.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(bmi)
        
        
        
        super.viewDidLoad()
    }
    
}
