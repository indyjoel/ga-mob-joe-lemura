//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    
    @IBOutlet var numberInput: UITextField!
    @IBOutlet var evenorOdd: UILabel!
    
    @IBAction func calculate(sender: AnyObject) {
        if numberInput.text != ""
        {
            if (numberInput.text.toInt()! % 2 == 0)
            {
                evenorOdd.text = "The Number \(numberInput.text) is Even"
            } else
            {
                evenorOdd.text = "The Number \(numberInput.text) is Odd"
            }
        }
    }
    
}
