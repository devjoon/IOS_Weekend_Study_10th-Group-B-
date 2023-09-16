//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit

let notificationCenter: NotificationCenter = .default

struct Registrant {
    var name: String
    var phoneNumber: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    private var registrantList: [Registrant] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notificationCenter.addObserver(self, selector: #selector(register), name: .regist, object: nil)
    }
    

    @IBAction func hitRegisterButton(_ sender: Any) {
        notificationCenter.post(name: .regist, object: nil)
    }
    
    @IBAction func hitCheckButton(_ sender: Any) {
        
    }
    
    @objc func register() {
        let name = nameTextField.text ?? ""
        let phoneNumber = phoneNumberTextField.text ?? ""
        let registrant = Registrant(name: name, phoneNumber: phoneNumber)
        
        registrantList.append(registrant)
        nameLabel.text = registrantList.last?.name
        phoneNumberLabel.text = registrantList.last?.phoneNumber
    }
}

extension Notification.Name {
    static let regist = Notification.Name("regist")
}

// 뷰와 컨트롤러는 나누기 어렵다.
// 어려운 이유는 컨트롤러가 뷰를 포함할 뿐만 아니라 라이프사이클을 관리하기 떄문에 서로 밀접하게 연관되어 있어서
// 뷰를 포함할뿐 뷰라고 보기에는 어려움이 있다.

