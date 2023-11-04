//
//  ViewController.swift
//  Table_View
//
//  Created by uemu on 2023/11/04.
//

import UIKit

enum FoodType: String, CaseIterable {
    case American
    case Chinese
    case Korean
    case Japanese
}

struct Food {
    let name: String
    var price: Int
}

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let foodType = FoodType.allCases
    
    var menu: [FoodType: [Food]] = [
        .American: [
            Food(name: "햄버거", price: 5000),
            Food(name: "피자", price: 18000),
            Food(name: "아메리카노", price: 41000)
        ],
        .Chinese: [
            Food(name: "탕수육", price: 18000)
        ],
        .Korean: [
            Food(name: "비빔밥", price: 8000),
            Food(name: "돼지갈비", price: 20000)
        ],
        .Japanese: [
            Food(name: "스시", price: 20000),
            Food(name: "스윙스(돈까스)", price: 5000)
        ]
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as? MenuTableViewCell else { return UITableViewCell()}
        
        cell.menuLable.text = menu[foodType[indexPath.section]]?[indexPath.row].name
        cell.priceLabel.text = menu[foodType[indexPath.section]]?[indexPath.row].price.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return menu[.American]?.count ?? 0
        case 1:
            return menu[.Chinese]?.count ?? 0
        case 2:
            return menu[.Korean]?.count ?? 0
        case 3:
            return menu[.Japanese]?.count ?? 0
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return foodType[section].rawValue
    }
}

