//: Playground - noun: a place where people can play

import UIKit

enum BunType  {
    case Plain
    case Seasame
    case Onion
    case Poppy
}

enum Patty : String{
    case Burger = "Burger"
    case Chix = "Chicken Breast"
    case Double = "double burger"
    case Veggie = "Tofu"
}


enum Condiments: String  {
    case Pickles = "Pickles"
    case Mustard = "Mustard"
    case Ketchup = "Ketchup"
    case Mayonase = "Mayonase"
    case Lettuce = "Lettuce"
    case Onion = "Onion"
    case Tomato = "Tomato"
    
    static var Everything: [Condiments] = [.Pickles, .Mustard, .Ketchup, .Mayonase, .Lettuce, .Onion, .Tomato]
    
    
    
}

struct Hamburger {
    let bun: BunType
    let meat: Patty
    let condiment: [Condiments]

}


enum Sides: String{
    case Fries = "Fries"
    case Chips = "Potato Chips"
    case Waffle = "Waffle Fries"
    case sweet = "Sweet Potato Fries"
}

enum Drinks: String{
    case soda = "Soda"
    case lemon = "Lemonade"
    case water = "Water"
    case milk = "Milk"
}

struct Order {
    var entree: Hamburger?
    var side: Sides?
    var drink: Drinks?
    var notes: String? = nil
    
    
    
    init(entree: Hamburger, side: Sides, drink: Drinks){
        self.entree = entree
        self.side = side
        self.drink = drink
    }
    init(entree: Hamburger, side: Sides, drink: Drinks, notes: String){
        self.entree = entree
        self.side = side
        self.drink = drink
        self.notes = notes
    }
}


var Entree1 = Hamburger(bun: .Plain, meat: .Burger, condiment: [Condiments.Ketchup, Condiments.Lettuce, Condiments.Mustard]);
var Entree2 = Hamburger(bun: .Onion, meat: .Chix, condiment: [Condiments.Lettuce, Condiments.Mayonase]);
var Entree3 = Hamburger(bun: .Seasame, meat: .Veggie, condiment: Condiments.Everything)


var Order1 = Order(entree: Entree1, side: .Chips, drink: .milk)
var Order2 = Order(entree: Entree2, side: .sweet, drink: .lemon)
var Order3 = Order(entree: Entree3, side: .Fries, drink: .soda)

var Order4 = Order(entree: Entree1, side: .Waffle, drink: .soda, notes: "hi")

print(Order1);
print(Order2);
print(Order3);
print(Order4);

