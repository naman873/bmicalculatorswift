//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain();
    
    @IBOutlet var heightLable: UILabel!
    @IBOutlet var weightLable: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLable.text = String((sender.value*100).rounded()/100) + "m"
        print((sender.value*100).rounded()/100)

    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLable.text = String(format: "%.0f", sender.value) + "kg"
        print(String(format: "%.0f", sender.value))
    }
        
    
    @IBAction func calculatePressed(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        
        calculatorBrain.calculateBmiValue(height: height, weight: weight)
        
        
        //Routing to another screen
//        let secondViewController = SecondViewController()
//        secondViewController.bmiVal = String(bmi)
//        self.present(secondViewController, animated: true,completion: nil)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "goToResult"){
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = calculatorBrain.getValue()
            destinationVc.adLable = calculatorBrain.getAdvice()
            destinationVc.bgColor = calculatorBrain.getColor()
        }
        
    }
    
}

