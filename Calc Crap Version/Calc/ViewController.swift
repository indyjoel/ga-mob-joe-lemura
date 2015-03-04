//
//  ViewController.swift
//  Calc
//
//  Created by Joe Lemura on 1/03/2015.
//  Copyright (c) 2015 Lemura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tempStorage = ""

    @IBOutlet var calcOutput: UILabel!

    
    @IBAction func no1(sender: UIButton) {
        buttonPressed("1")
    }
    
    @IBAction func no2(sender: UIButton) {
        buttonPressed("2")

    }
    
    @IBAction func no3(sender: UIButton) {
        buttonPressed("3")

    }
    
    @IBAction func plusButton(sender: UIButton) {
        buttonPressed("+")

    }
  
    
    func buttonPressed(buttonPressed: String) {
        println("Button Pressed is" + buttonPressed)
        
        switch buttonPressed
        {
        case "0","1","2","3","4","5","6","7","8","9":
            println("This is a number between 0 and 10")
            let tempValue = calcOutput.text
            //println("tempvalue is " + tempValue)
            //tempStorage = tempValue
            calcOutput.text = tempValue
        case "+":
            println("This is a +")
            //strop = true
            
        default:
            println("HUH!!!")
        }
        
   //func buttonPressed(button: String) -> String {
        //return "Hello again, " + personName + "!"
     //   return "Hello again, " + personName + "!"
        
        
    }
    //println(sayHelloAgain("Anna"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

