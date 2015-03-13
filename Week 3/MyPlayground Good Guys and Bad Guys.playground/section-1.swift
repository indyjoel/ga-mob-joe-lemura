// Playground - noun: a place where people can play

import UIKit

class Player {
    
    // Properties
    
    //let name : String
    var health : Int
    let goodOrBad : String
    
    // Create Initializer
    init( health : Int, goodOrBad : String)
    {
      //  self.name  = name
        self.health = health
        self.goodOrBad = goodOrBad
    }
    
    func showHealth() -> Int {
        return self.health
    }
    
    func attack (formOfAttack : String) -> Int
    {
        var attackedHealth = 0

        if formOfAttack == "Axe" {
            
            attackedHealth = Int(arc4random_uniform(12)) + 8
            
        }
        else if formOfAttack == "Sword"
        {
            attackedHealth = Int(arc4random_uniform(15)) + 5
        }
    
        self.health = self.health - attackedHealth
        
        return health
    }
    
}

class GoodGuy : Player{

}

class  BadGuy : Player {
    
}

let x = Player(health: 100, goodOrBad : "Good")
let y = BadGuy(health: 100, goodOrBad : "Bad")

x.showHealth()

x.attack("Axe")
x.showHealth()






