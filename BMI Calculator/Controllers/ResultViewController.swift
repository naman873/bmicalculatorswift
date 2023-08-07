//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Naman Dhiman on 22/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    var bmiValue: String?
    var adLable: String?
    var bgColor: UIColor?
    
    
    @IBOutlet var bmiLable: UILabel!
    @IBOutlet var adviceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text = bmiValue
        adviceLable.text = adLable
        view.backgroundColor = bgColor
    }
    

    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
