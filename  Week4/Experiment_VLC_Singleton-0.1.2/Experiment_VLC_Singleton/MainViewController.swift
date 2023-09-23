//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

class PointManager {
    var point: Int = 50
}

class MainViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        print("1 - loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1 - viewDidLoad")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("1 - viewWillAppear")
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
    
    
}

