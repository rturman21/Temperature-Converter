//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Main Guest on 11/6/20.
//  Copyright © 2020 Main Guest. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var numConvLabel: UILabel!
    @IBOutlet weak var convResLabel: UILabel!
    @IBOutlet weak var tempInputField: UITextField!
    
    var count = 0
    
    @IBAction func convertBtnTapped(_ sender: Any) {
        
        if let input = tempInputField.text {
            if input == "" {
                return
            } else {
                if let n = Double(input) {
                    let answer = calcAnswer(num: n)
                    convResLabel.text = String("\(answer) Degrees F")
                }
            }
        }
        updateCounter()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calcAnswer(num: Double) -> Double {
        return num * (9/5) + 32.rounded()   
    }
    func updateCounter() {
        count += 1
        var endLabel = " conversions"
        if count == 1 {
            endLabel = " conversion"
        }
        numConvLabel.text = "\(count)\(endLabel)"
    }
}


