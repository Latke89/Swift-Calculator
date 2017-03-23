//
//  ViewController.swift
//  Caluculator
//
//  Created by Brett Gordon on 3/22/17.
//  Copyright © 2017 Brett Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var userIsTyping = false;
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!;
        
        if userIsTyping {
            let currentTextInDisplay = display!.text!;
            display.text = currentTextInDisplay + digit;
        } else {
            display.text = digit;
            userIsTyping = true;
        }
        // print("\(digit)")
    }
    
    
    @IBOutlet weak var display: UILabel!
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        let mathematicalSymbol = sender.currentTitle!
        userIsTyping = false
        switch mathematicalSymbol {
        case "π":
            displayValue = Double.pi
        case "√":
            displayValue = sqrt(displayValue)
        default:
            break;
            
        }
    }
    
}

