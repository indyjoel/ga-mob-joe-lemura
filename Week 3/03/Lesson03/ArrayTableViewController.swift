//
//  ArrayTableViewController.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayTableViewController: UITableViewController {
    
    /*
        TODO five: Create a subclass of the Animal class, add an instance of that object to be displayed in the table view, then change the displayed string of the subclass to your liking. Your subclass should override the function 'prettyAnimalName' (i.e. you should only need to modify the below array, not the table view code)
    */
    //need to comment this out as we want to change it below
    //let animalArray = [Animal(name: "Rover"), Animal(name: "Mittens"), Animal(name: "Ein"), Animal(name: "Sadie")]
    
    
    //created a new subclass of Animal
    //changed the displayed string from Animal Name to SuperVillian Name
    class subclassAnimal : Animal {
        override func prettyAnimalName() -> String {
            return "SuperVillian name: " + self.name
        }
    }
    
    //create an instance
    //let the code do everything else
    let animalArray = [subclassAnimal(name: "Rover"), subclassAnimal(name: "Mittens"), subclassAnimal(name: "Ein"), subclassAnimal(name: "Sadie")]
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animalArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        
        cell.textLabel?.text = animalArray[indexPath.row].prettyAnimalName()
        
        return cell
    }
}


