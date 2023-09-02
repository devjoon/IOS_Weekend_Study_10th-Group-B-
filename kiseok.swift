//
//  main.swift
//  kiseok
//
//  Created by 박기석 on 2023/09/02.
//

import UIKit

var budget: Int = 2000
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]

enum BuyError: LocalizedError {
    case soldOut
    case notEnoughMoney(budget: Int)
    case nothingProduct
    
    var errorDescription: String? {
        switch self {
        case .soldOut:
            return ""
        case .notEnoughMoney(budget: budget):
            return "잔액 \(budget)"
        case .nothingProduct:
            return ""
        default:
            return ""
        }
    }
}


func buy(productNumber: Int) throws {
    guard productNumber <= productsList.count else {
        throw BuyError.nothingProduct
    }

    guard let product = productsList[productNumber] else {
        throw BuyError.soldOut
    }

    guard budget != 0 else {
        throw BuyError.notEnoughMoney(budget: budget)
    }

    productsList[productNumber] = nil
    budget -= 1000
    print("\(product)구매완료")
}

//do {
////    try buy(productNumber: 13)
//    try buy(productNumber: 1)
//    try buy(productNumber: 2)
//    try buy(productNumber: 3)
//
//} catch BuyError.notEnoughMoney {
//    print("잔액부족")
//    print("잔액: \(budget)")
//} catch BuyError.soldOut {
//    print("상품품절")
//} catch BuyError.nothingProduct {
//    print("없는상품")
//}

do {
    try buy(productNumber: 1)
    try buy(productNumber: 2)
    try buy(productNumber: 3)

} catch {
    print(error.localizedDescription)
}




//func buy(productNumber: Int) {
//    guard productNumber <= productsList.count else {
//        print("없는 상품입니다.")
//        return
//    }
//
//    guard let product = productsList[productNumber] else {
//        print("상품품절")
//        return
//    }
//
//    guard budget != 0 else {
//        print("잔액부족")
//        print("잔액: \(budget)")
//        return
//    }
//
//    productsList[productNumber] = nil
//    budget -= 1000
//    print("\(product)구매완료")
//}

//buy(productNumber: 5)
//buy(productNumber: 2)
//buy(productNumber: 0)
//buy(productNumber: 1)
//buy(productNumber: 13)




//if let

//for index in 0..<productsList.count {
//    if let product = productsList[index] {
//        print("\(index)번 상품은 \(product)입니다.")
//    } else {
//        print("상품없음")
//    }
//}

//guard let

//for index in 0..<productsList.count {
//    guard let product = productsList[index] else {
//        print("상품없음")
//        break
//    }
//    print("\(index)번 상품은 \(product)입니다.")
//}

//while



//switch

//for index in 0...(productsList.count - 1) {
//    switch productsList[index] {
//    case .none:
//        print("상품없음")
//
//    case .some(let product):
//        print(product)
//    }
//}



//nil coalescing

//for index in 0...(productsList.count - 1) {
//    print("\(index)번 상품은 \(productsList[index] ?? "상품없음")입니다.")
//}



//고차함수 활용

//let unwrappedProductsList = productsList.compactMap{ $0 }
//for (index, product) in unwrappedProductsList.enumerated() {
//    print("\(index)번 상품은 \(product)입니다.")
//}




