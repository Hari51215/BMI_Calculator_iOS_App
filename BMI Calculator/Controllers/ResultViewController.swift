//
//  ResultViewController.swift
//  BMI Calculator
//  Created by hari-pt5664 on 15/08/22.
//  Copyright © 2022 Angela Yu. All rights reserved.

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var color : UIColor?
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        view.backgroundColor = color
    }
    
    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
