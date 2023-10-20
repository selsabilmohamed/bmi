//
//  ViewController.swift
//  bmi calculator
//
//  Created by selsabil mohamed on 10/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func weightInput(_ sender: Any) {
    }

    
    @IBAction func heightInput(_ sender: Any) {
    }
    
    @IBOutlet weak var categoryOutput: UILabel!
    
    @IBAction func BMIOutput(_ sender: Any) {
    }
    
    @IBAction func calcBMI(_ sender: Any) {
        if let heightStr = heightInput.text {
            if heightStr == "" {
            return
            }
                else {
                    if let weightStr = weightInput.text {
                        if weightStr == "" {
                            return
                        }
                        else {
                            if let heightNum = Double(heightStr) {
                                if let weightNum = Double(weightStr) {
                                    let BMI: Double = (weightNum) / (heightNum * heightNum)
                                    BMIOuput.text = String(BMI)
                                    
                                    switch BMI {
                                    case 1..<15:
                                        categoryOutput.text = "incredibly severely underweight"
                                    case 15...16:
                                        categoryOutput.text = "severely underweight"
                                    case 16..<18.5:
                                        categoryOutput.text = "underweight"
                                    case 18.5..<25:
                                        categoryOutput.text = "normal"
                                    case 25..<30:
                                        categoryOutput.text = "overweight"
                                    case 30..<35:
                                        categoryOutput.text = "moderately obese"
                                    case 35..<40:
                                        categoryOutput.text = "severely obese"
                                    case 40..<60:
                                        categoryOutput.text = "very severely obese"
                                    default:
                                        return
                                        
                                        
                                    }
                                    
                                }
                            }
                        }
            }
        }
    }
    
    
    
    
    
}

