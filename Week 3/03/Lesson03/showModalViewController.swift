//
//  showModalViewController.swift
//  Lesson03
//
//  Created by IndyJCL on 13/03/2015.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class showModalViewController: UIViewController {
    let myLabel = UILabel()
    let myImage:UIImage! = UIImage(named:"Image")
    let dismissButton: UIButton! = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the transition style for the modal dialog
        modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        
        // Build a programmatic view
        //If i wanted to change the backgound color
        view.backgroundColor = UIColor(red: 0.8, green: 0.5, blue: 0.2, alpha: 1.0)
        
        //TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
        //show the button
        
        //creates the button, sets the title and alignment and frame
        //then calls the vcDidFinish to dismiss the VC
        dismissButton.setTitle("Done", forState: .Normal)
        dismissButton.titleLabel?.font = UIFont(name: "Helvetica", size: 24)
        dismissButton.titleLabel?.textAlignment = .Left
        dismissButton.frame = CGRectMake(150,175,200,50)
        dismissButton.addTarget(self, action: "vcDidFinish", forControlEvents: .TouchUpInside)
        view.addSubview(dismissButton)
        
        
        /*
        TODO two: Add an imageview to the modal dialog presented in TODO two.
        I hope that's right
        show the image
        */
        if (myImage != nil){
            let myImageView = UIImageView(image: myImage)
            myImageView.frame = view.frame
            myImageView.frame = CGRectMake(10, 10, 200, 200)
            view.addSubview(myImageView)
        }else{
            println("image not found")
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //func to dismiss the modal call from the done button
    func vcDidFinish(){
        dismissViewControllerAnimated(true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
