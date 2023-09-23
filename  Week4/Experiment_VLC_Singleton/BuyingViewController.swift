//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class BuyingViewController: UIViewController {
    let yaPoint = PointManager.shared
    
    override func loadView() {
        super.loadView()
        print("2 - loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("2 - viewDidLoad")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2 - viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("2 - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("2 - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("2 - viewDidDisappear")
    }
    
    @IBAction func buyButtonTapped(_ sender: Any) {
        yaPoint.reducePoint()
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
