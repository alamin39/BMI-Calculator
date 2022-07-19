//
//  ViewController.swift
//  BMI
//
//  Created by Al-Amin on 12/7/22.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var heightUISlider: UISlider!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var weightUISlider: UISlider!
    @IBOutlet weak var calculateButton: UIButton!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightUISlider.value
        let weight = weightUISlider.value
        
        calculatorBrain.calculateBMIScore(height: height, weight: weight)
        performSegue(withIdentifier: "ResultVC", sender: self)
    }
    
    @IBAction func selectHeight(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightValue.text = "\(height)m"
    }
    
    @IBAction func selectWeight(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightValue.text = weight + "Kg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultVC" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.bmiScore = calculatorBrain.getScore()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}
