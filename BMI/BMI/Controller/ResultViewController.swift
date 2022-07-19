//
//  ResultViewController.swift
//  BMI
//
//  Created by Al-Amin on 12/7/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var yourResultLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    var bmiScore: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointLabel.text = bmiScore
        messageLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
