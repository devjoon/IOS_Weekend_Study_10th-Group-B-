//
//  main.swift
//  week2
//
//  Created by 박기석 on 2023/09/09.
//

struct Shop {
    var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
}

class ShopManager {
    var shop: Shop
    
    init(shop: Shop) {
        self.shop = shop
    }
    
    func checkValid(productNumber: Int) -> Bool {
        var isValid: Bool
        if productNumber > shop.productsList.count - 1 {
            print("없는 상품입니다.")
            isValid = false
        } else if shop.productsList[productNumber] == nil {
            print("품절되었습니다.")
            isValid = false
        } else {
            isValid = true
        }
        return isValid
    }
    
    func sell(productNumber: Int) {
        shop.productsList[productNumber] = nil
    }
}

struct Camper {
    var budget: Int = 2000
    
    mutating func buy(productNumber: Int, manager: ShopManager)  {
        if manager.checkValid(productNumber: productNumber) {
            checkBuget(productNumber: productNumber, manager: manager)
        }
    }
    
    mutating func checkBuget(productNumber: Int, manager: ShopManager) {
        guard let product = manager.shop.productsList[productNumber] else {
            print("없는 상품입니다.")
            return
        }
        
        if budget == 0 {
            print("금액이 부족합니다.")
        } else {
            budget -= 1000
            print("\(product)구매완료")
            print("잔액이 \(budget) 남았습니다.")
            manager.sell(productNumber: productNumber)
        }
    }
}


let shop1 = Shop()
let shopManager1 = ShopManager(shop: shop1)
                        
var kiseok = Camper()

kiseok.buy(productNumber: 9, manager: shopManager1)
kiseok.buy(productNumber: 2, manager: shopManager1)
kiseok.buy(productNumber: 2, manager: shopManager1)
kiseok.buy(productNumber: 3, manager: shopManager1)


