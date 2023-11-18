//
//  Bag.swift
//  POPProject
//
//  Created by Kiseok on 11/18/23.
//

import Foundation

struct Bag {
    private var items: [Portable] = []
    
    mutating func put(item: Portable) {
        items.append(item)
        print("\(item)넣었습니다.")
    }
}
