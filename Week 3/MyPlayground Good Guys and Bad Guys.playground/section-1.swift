// Playground - noun: a place where people can play

import UIKit

class Player {
    
    // Properties
    
    let name : String
    let health : Int
    let goodOrBad : String
    
    // Create Initializer
    init(name : String, health : Int, goodOrBad : String)
    {
        self.name  = name
        self.health = health
        self.goodOrBad = goodOrBad
    }
    
    func showHealth() -> Int {
        return self.health
    }
    
    func attack () -> Int
    {
        var attackedHealth = Int(arc4random_uniform(20))
        let newHealth = self.health - attackedHealth
        var health = newHealth
        
        return newHealth
    }
    
}

class GoodGuy : Player{

}

class BadGuy : Player {
    
}

let x = GoodGuy(name: "Good1", health: 100, goodOrBad : "Good")
let y = BadGuy(name: "Bad1", health: 100, goodOrBad : "Bad")

x.showHealth()

x.attack()
x.showHealth()




