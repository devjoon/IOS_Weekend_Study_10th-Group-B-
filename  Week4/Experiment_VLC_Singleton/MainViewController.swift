//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class PointManager {
    static let shared = PointManager(point: 50)
    private(set) var point: Int
    
    private init(point: Int) {
        self.point = point
    }
    
    func reducePoint() {
        self.point -= 50
    }
    
    func reset() {
        self.point = 50
    }
}

class MainViewController: UIViewController {
    
    @IBOutlet weak var pointLabel: UILabel!
    
    let yaPoint = PointManager.shared
    
    override func loadView() {
        super.loadView()
        print("1 - loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1 - viewDidLoad")
       
       
    }
    
    
    @IBAction func goShopButton(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "shop") else {
            return
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("1 - viewWillAppear")
        pointLabel.text = String(yaPoint.point)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("1 - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("1 - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("1 - viewDidDisappear")
    }
    
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        yaPoint.reset()
        pointLabel.text = String(yaPoint.point)
    }
}

