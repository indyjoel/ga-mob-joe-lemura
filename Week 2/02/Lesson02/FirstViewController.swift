//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    /* JCL
    I misread and misunderstood what was required so i added
    the extra functions to the label box
    following reviews i have now added them to the println as directed
    */
    
    
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    */
    
    
   func todoOne()
   {
    labelOne.text = "hello world!"
    }
    
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var name: UITextField!
    @IBOutlet var age: UITextField!
   
    @IBAction func todoOne(sender: UIButton) {
        todoOne()
        todoTwo()
        todoThree()
        todoFour()
    }

    
    /*
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    */
    func todoTwo()
    {
        if (name.text != "" && age.text != "")
        {
            let templabelOne : String? = labelOne.text
            //labelOne.text = labelOne.text! + "\n" + "Hello \(name.text), you are \(age.text) years old"
            println("Hello \(name.text), you are \(age.text) years old")
        }
    }
    
    
    /*
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    */
    
    
    func todoThree()
    {
        if (name.text != "" && age.text != "")
        {
        if (age.text.toInt() >= 21)
        {
            //labelOne.text = labelOne.text! + "\n" + "you can drink"
            println("you can drink")
        } else
        if (age.text.toInt() >= 18)
        {
            //labelOne.text = labelOne.text! + "\n" + "you can vote"
            println("you can vote")
        } else
        if (age.text.toInt() >= 16)
        {
            labelOne.text = labelOne.text! + "\n" + "you can drive"
            println("you can drive")
            }
        }
    }

    
    /*
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    
    
    func todoFour()
    {
        if (name.text != "" && age.text != "")
        {
        if (age.text.toInt()! >= 16) && (age.text.toInt() < 18)
        {
            //labelOne.text = labelOne.text! + "\n" + "you can drive"
            println("you can drive")
        } else
        if (age.text.toInt()! >= 18) && (age.text.toInt() < 21)
        {
            //labelOne.text = labelOne.text! + "\n" + "you can drive and vote"
            println("you can drive and vote")
        } else
        if (age.text.toInt()! >= 21)
        {
            //labelOne.text = labelOne.text! + "\n" + "you can drive and vote and drink"
            println("you can drive and vote and drink")
            }
        }
    }
    
}
