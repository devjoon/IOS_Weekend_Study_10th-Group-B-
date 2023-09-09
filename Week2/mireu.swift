//  main.swift
//  week2
//
//  Created by mireu on 2023/09/09.


struct Shop {
    private var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
    private(set) var productPrices: [String: Int] = ["볼펜": 1000, "텀블러": 1000, "다이어리": 1000, "에코백": 1000, "머그컵": 1000, "후드집업": 1000]
    //   fileprivate(접근수준으로 지정한 요소는 같은 파일 어떤코드에서도 접근가능)
    //   private(같은 파일 내부에 다른 타입의 코드가 있더라도 접근이 불가)
    //   private(set) (값을 변경할수 없고, 읽기만 가능)
    
   mutating func manageProduct(_ index: Int) -> String? {
        guard index >= 0 && index <= productsList.count else {
            print("선택한 상품은 없습니다.")
            return nil
        }
        
        let product = productsList[index]
        productsList[index] = nil
        return product
    }
}

struct Camper {
    var budget: Int = 2000
    
    mutating func buy(_ productNumber: Int, _ shop: inout Shop) {

        guard let productName = shop.manageProduct(productNumber) else {
            print("선택한 상품은 없습니다.")
            return
        }

        guard let productPrice = shop.productPrices[productName]  else {
            return
        }
        
        if budget < productPrice {
            print(productPrice)
            print("예산이 부족합니다.")
        } else {
            print(productPrice)
            print("\(productName) 구매에 성공하였습니다.")
            budget -= productPrice
            print("남은 예산: \(budget)")
        }
    }
}

var daiso = Shop()
var coupang = Shop()
var mireu = Camper()
//
//mireu.buy(1, &daiso)
//mireu.buy(2, &daiso)

mireu.buy(0, &coupang)
mireu.buy(0, &coupang)

//mireu.buy(1, &daiso)
//mireu.buy(1, &coupang)


