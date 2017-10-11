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
    
    var display
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func digitBtnTouchUpInside(_ sender: UIButton) {
    }
    
}

