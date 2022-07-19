//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Al-Amin on 12/7/22.
//

import UIKit

struct CalculatorBrain {
    
    var result: ResultData?
    
    func getAdvice() -> String {
        return result?.advice ?? "No Advice"
    }
    
    func getScore() -> String {
        let score = String(format: "%.2f", result?.bmiScore ?? 0)
        return score
    }
    
    func getColor() -> UIColor {
        return result?.color ?? .white
    }
    
    mutating func calculateBMIScore(height: Float, weight: Float) {
        let score = weight / (height * height)
        
        if score < 18.5 {
            result = ResultData(bmiScore: score, advice: "Eat More Pies!", color: .brown)
        }
        else if score < 24.9 {
            result = ResultData(bmiScore: score, advice: "Fit as a fiddle!", color: .green)
        }
        else {
            result = ResultData(bmiScore: score, advice: "Eat Less Pies!", color: .purple)
        }
    }
    
}
