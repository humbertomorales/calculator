//
//  ViewController.swift
//  Calculator
//
//  Created by Humberto Morales on 12/31/14.
//  Copyright (c) 2014 Humberto Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFieldNumbers: UITextField!
    
    var number1 = 0;
    var number2 = 0;
    var operationType = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func operation(sender: AnyObject) {
        let buttomAux : UIButton = sender as! UIButton
        operationType = buttomAux.currentTitle!
        number1 = textFieldNumbers.text.toInt()!
    }

    @IBAction func numberPressed(sender: AnyObject) {
        let buttomAux = sender as! UIButton
        textFieldNumbers.text = buttomAux.currentTitle
    }
    
    
    @IBAction func equalOperation(sender: AnyObject) {
        
        number2 = textFieldNumbers.text.toInt()!
        var result = 0
        
        if operationType == "+"{
            result = number1 + number2
        }else if operationType == "-"{
            result = number1 - number2
        }else if operationType == "x"{
            result = number1 * number2
        }
        
        textFieldNumbers.text = result.description
    }
    
    @IBAction func resetValues(sender: AnyObject) {
        number1 = 0;
        number2 = 0;
        operationType = ""
        textFieldNumbers.text = "0"
    }
    
    
}

