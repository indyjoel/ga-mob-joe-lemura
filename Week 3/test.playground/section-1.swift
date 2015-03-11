// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var totalAmt = 0

func buttonPressed (button : String)
{
    println("\(button) Pressed and the total amt is \(totalAmt)")
    var temp : Int? = button.toInt()
    
    switch (temp)
    {
    case 1:
        println("\(button) Pressed and the total amt is \(totalAmt) and button pressed is \(button)")
        totalAmt += temp
        
    default:
        println("Default")
    }
    
    
    //        result.text = String(totalAmt)
}

buttonPressed("1")


