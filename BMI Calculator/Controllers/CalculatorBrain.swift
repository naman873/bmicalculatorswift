//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Naman Dhiman on 22/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain{
    
    var bmiValue: BMI?
    
    
    mutating func calculateBmiValue(height: Float, weight: Float){
        let bmi = weight / pow(height, 2)
        
        var advice: String?
        
        var color: UIColor?
        
        
        
        if (bmi > 24.9) {
            advice = "Eat Less Pies!"
            color = UIColor.systemPink
        }
        else if (bmi >= 18.5  && bmi <= 24.9) {
            advice = "Fit as fiddle!"
            color = UIColor.green

        }
        else{
         advice =    "Eat more Pie!"
            color = UIColor.blue

        }
        bmiValue = BMI(value: bmi, advice: advice ?? "" , color: color ?? UIColor.black)
    
    }

    
    func getValue()-> String{
        return String(format: "%.1f", bmiValue?.value ?? 0.0)
    }
    
    func getAdvice()->String{
        return bmiValue?.advice ?? ""
    }
    
    func getColor()-> UIColor{
        return bmiValue?.color ?? UIColor.black
    }
    
}
