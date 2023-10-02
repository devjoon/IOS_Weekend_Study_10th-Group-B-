//
//  main.swift
//  UML
//
//  Created by uemu on 2023/10/02.
//
enum CoffeeMenu {
    case americano
    case latte
    
    var price: Int {
        switch self {
        case .americano:
            return 35000
        case .latte:
            return 40000
        }
    }
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
        if menu.price <= self.money {
            self.money -= menu.price
            print("\(self.money)남음")
            shop.order(menu)
        } else {
            print("잔액이 부족합니다.")
        }
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
        self.money += menu.price
//        print("\(self.money)")
        print("\(menu) 나왔습니다.")
    }
}

class CoffeeShop {
    var manager: CafeManager
    
    init(manager: CafeManager) {
        self.manager = manager
    }
    
    func order(_ menu: CoffeeMenu) {
        manager.brew(menu)
    }
}

var Camper2 = CafeManager(name: "uemu", money: 300000)
var Cafe = CoffeeShop(manager: Camper2)
var Camper = Person(name: "Kiseok", money: 120000)
Camper.buy(CoffeeMenu.americano, at: Cafe)
Camper.buy(CoffeeMenu.americano, at: Cafe)
Camper.buy(CoffeeMenu.latte, at: Cafe)
Camper.buy(CoffeeMenu.americano, at: Cafe)

