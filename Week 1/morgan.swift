//
//  main.swift
//  Week1
//
//  Created by devjoon on 2023/09/02.
//

import Foundation
var budget: Int = 3000
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
var isEmpty: Bool = true
var nilCount: Int = 0

func explainProduct() {
    while isEmpty { // 버짓으로 변경하여 버짓이 1000 아래가 아닐때로 관리해보자
        for (index,product) in productsList.enumerated() {
            if let unWrappingProduct = product {
                print("\(index)번 상품은 \(unWrappingProduct)입니다.")
            }
        }
        
        for product in productsList {
            if product == nil {
                nilCount += 1
            }
        }
        // isEmpty라는 컬랙션 타입이 있다, 조건상 프로덕트리스트의 원소를 제거가 불가능하기에 . 제거가 가능하다면 이즈엠티를 이용하자
        if nilCount == productsList.count {
            isEmpty = false
            print("구매 가능한 상품이 없습니다\n")
            continue
        }
        
        nilCount = 0
        
        print("\n원하시는 상품의 번호를 선택해주세요 (-1 은 종료) : ", terminator: "")
        if let productNumberString = readLine() { // 가드를 이용하도록 해보자 빠른종료를 위해서 , 에러처리 , 가독성 측면에서도 가드가 좋다, 외부에서도 사용하기 용이하다
            guard let productNumber = Int(productNumberString) else {
                print("입력이 잘못되었습니다.\n")
                continue
            }
            
            guard productNumber < productsList.count else {
                print("구매 가능한 상품 번호를 초과하였습니다.\n")
                continue
            }
            
            if productNumber == -1 {
                print("물품 구매가 종료됩니다.")
                break
            }else{
                buy(productNumber: Int(productNumber))
            }
        }
    }
}
    
func buy(productNumber: Int) {
    
    if productsList[productNumber] == nil {
        print("해당 상품은 품절입니다\n")
    }else{
        if budget < 1000{
            print("잔액이 부족합니다\n")
            return
        }// 품목 가격을 1000원으로 통일해서 가능하지만, 좋은 방식은 아니다
        
        budget -= 1000
        productsList[productNumber] = nil
        print("""
        \(productNumber)번 상품이 구매되었습니다.
        남은 잔액은 \(budget)원 입니다.\n
        """)
    }
}

explainProduct()
