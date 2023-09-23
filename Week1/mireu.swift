//
//  main.swift
//  Week1
//
//  Created by devjoon on 2023/09/02.
//

import Foundation

var budget: Int = 2000
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
var productPrices: [String: Int] = ["볼펜": 1000, "텀블러": 1000, "다이어리": 1000, "에코백": 1000, "머그컵": 1000, "후드집업": 1000]
//항목들을 enum타입으로, 가독성을 고려해서
//코드 파라미터를 enum타입으로
func buy(productNumber: Int) {
    if productNumber >= 0 && productNumber < productsList.count {
        if let productName = productsList[productNumber] {
            if let productPrice = productPrices[productName] {
                
                if budget >= productPrice {
                    print("\(productName) 구매에 성공하였습니다.")
                    
                    budget -= productPrice
                    productsList[productNumber] = nil
                    print("남은 예산: \(budget)")
                } else {
                    print("예산이 부족합니다.")
                }
            }
        } else {
            print("선택한 상품은 없습니다.")
        }
    } else {
        print("선택한 상품은 없습니다.")
    }
}

buy(productNumber: 5)
buy(productNumber: 5)
buy(productNumber: 6)
