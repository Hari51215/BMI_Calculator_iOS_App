//CalculatorModel.swift
//  BMI Calculator
//  Created by hari-pt5664 on 15/08/22.
//  Copyright © 2022 Angela Yu. All rights reserved.

import UIKit
struct CalculatorModel {
    var bmi: BMIChange?

    func getBMIValue () -> String {
        let bmiResult = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiResult
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float , weight: Float) {
        let bmiValue = weight/(height * height)
        if bmiValue < 18.5 {
            bmi = BMIChange(value: bmiValue, color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMIChange(value: bmiValue, color: .green)
        } else {
            bmi = BMIChange(value: bmiValue, color: .red)
        }
    }
}
