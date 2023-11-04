//
//  ViewController.swift
//  JSON
//
//  Created by uemu on 2023/11/04.
//

import UIKit

class ViewController: UIViewController {
    var camperInfo: [CamperInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let dataAsset = NSDataAsset(name: "JSONTest") else {
            return
        }
        let jsonDecoder = JSONDecoder()
        
        do {
            camperInfo = try jsonDecoder.decode([CamperInfo].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
        
        print(camperInfo)
    }


}


