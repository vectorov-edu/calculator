//
//  ViewController.swift
//  calculator
//
//  Created by Admin on 12.10.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var displayNumber : Double = 0
    var operand1 : String = "";
    var operand2 : String = "";
    var operation : String = "";
    
    var userTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func digitBtnTouchUpInside(_ sender: UIButton) {
        let digit = sender.currentTitle
        if userTyping
        {
            displayLabel.text?.append(digit!)
        }
        else
        {
            displayLabel.text = digit
            userTyping = true
        }
    }
    
    @IBAction func operationBtnTap(_ sender: UIButton) {
        let operation = sender.currentTitle!
        switch operation {
        case "C":
            displayLabel.text = "0"
            userTyping = false
            operand1 = ""
            operand2 = ""
        case ".":
            displayLabel.text?.append(".")
        case "=":
            operand2 = displayLabel.text!
            
            displayLabel.text = "\(operand1) \(self.operation) \(operand2)"
            userTyping = false
        case "+", "-", "*", "/":
            operand1 = displayLabel.text!
            self.operation = operation
        case "\u{221A}":
            operand1 = displayLabel.text!
        default:
            <#code#>
        }
    }
}

