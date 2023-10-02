//
//  main.swift
//  UML
//
//  Created by uemu on 2023/10/02.
//
enum CoffeeMenu {
    case americano
    case latte
    
//    var price: int {
//        
//    }
}

class Person {
    let name: String
    var money: Int
    var coffee: Coffee?
    
    init(name: String, money: Int) {
        self.name = name
        self.money = money
    }
    
    func buy(_ menu: CoffeeMenu, at shop: CoffeeShop) {
        shop.order(menu)
    }
}

class Coffee {
    var kind: CoffeeMenu
    var amount: Int = 1
    
    init(kind: CoffeeMenu) {
        self.kind = kind
    }
}

class CafeManager: Person {
    func brew(_ menu: CoffeeMenu) {
        
    }
}

class CoffeeShop {
    var manager: CafeManager
    
    init(manager: CafeManager) {
        self.manager = manager
    }
    
    func order(_ menu: CoffeeMenu) {
        
    }
}

var Camper2 = CafeManager(name: "uemu", money: 300000)
var Cafe = CoffeeShop(manager: Camper2)
var Camper = Person(name: "Kiseok", money: 120000)
Camper.buy(CoffeeMenu.americano, at: Cafe)
