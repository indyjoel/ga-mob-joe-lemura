//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var totalNumber: UILabel!
    @IBOutlet var numberOutput: UITextField!
    
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    @IBAction func addButton(sender: AnyObject) {
       
        if (numberOutput.text != "")
        {
            let temp : Int = numberOutput.text.toInt()!
            let temp2 = totalNumber.text?.toInt()
            let temp3 = temp + temp2!
            totalNumber.text = toString(temp3)
            numberOutput.text = ""
        }
    }
    
    
}
