//
//  ViewController.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
    */
    
    
    // adding swipe gesture here
    
    @IBAction func swipeRight(sender: UISwipeGestureRecognizer) {
        
        //only used here to debug
        //println("Testing the Swipe")
        
        // I think we are supposed to show the modal dialog in code form, here we go
        // I hope I am right
        presentViewController(showModalViewController() , animated: true, nil)
    

    }
    
    /*
    TODO two: Add an imageview to the modal dialog presented in TODO two.
    //I did this in the code for the showModalViewController programatically
    // I hope that's right
    
    
    
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    */
    @IBAction func todoFour(sender: AnyObject) {
        
        // make sure the segue name is right. 
        // show the main storyboard, select the segue, then goto the properties attributes inspector segue option
        // that had me stumped, thank goodness for Mr Google!!!
        
        performSegueWithIdentifier("show" ,  sender: self)
        
        
    }
    
    

}

