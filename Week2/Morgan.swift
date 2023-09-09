//
// created By morgan on 23/09/09.
//
struct Camper {
    var name : String
    var budget: Int
    
    init(name: String, budget: Int) {
        self.name = name
        self.budget = budget
    }
}

struct Shop {
    private var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]
    var name : String
    var isEmpty: Bool = true
    var nilCount: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    mutating func buy(camper: inout Camper) {
        while isEmpty {
            for (index,product) in productsList.enumerated() {
                if let unwrappingProduct = product {
                    print("\(index)번 상품은 \(unwrappingProduct)입니다.")
                }
            }
            for product in productsList {
                if product == nil {
                    self.nilCount += 1
                }
            }
                
            if nilCount == productsList.count {
                self.isEmpty = false
                print("구매 가능한 상품이 없습니다\n")
            } else {
                self.nilCount = 0
            }
            
            print("\n원하시는 상품의 번호를 선택해주세요 (-1 은 종료) : ", terminator: "")
            guard let productNumberString = readLine() else {
                print("입력이 잘못되었습니다.\n")
                continue
            }
            guard let productNumber = Int(productNumberString) else {
                print("입력이 잘못되었습니다.\n")
                continue
            }
            
            if productNumber == -1 {
                print("해당 샵의 물품 구매가 종료됩니다.")
                break
            }
            
            if productsList[productNumber] == nil {
                print("해당 상품은 품절입니다\n")
            } else {
                if camper.budget < 1000{
                    print("잔액이 부족합니다\n")
                    return
                }
                
                camper.budget -= 1000
                self.productsList[productNumber] = nil
                print("""
            ---------------------
            \(productNumber)번 상품이 구매되었습니다.
            남은 잔액은 \(camper.budget)원 입니다.
            ---------------------
            """)
            }
        }
    }
}

var koreaShop = Shop(name: "korea")
var usaShop = Shop(name: "usa")
var morgan = Camper(name: "morgan", budget: 10000)

func goYagomShop() {
    while true {
        print("원하시는 국가의 야곰샵을 선택해주세요 (1.한국 2.미국 3.종료) : ",terminator: "")
        guard let nationString = readLine() else {
            print("입력이 잘못되었습니다.\n")
            continue
        }
        guard let nationNumber = Int(nationString) else {
            print("입력이 잘못되었습니다.\n")
            continue
        }
        
        if nationNumber == 1 {
            print("한국 샵으로 이동합니다")
            explainProduct(nation: &koreaShop, who: &morgan)
        } else if nationNumber == 2 {
            print("미국 샵으로 이동합니다")
            explainProduct(nation: &usaShop, who: &morgan)
        } else if nationNumber == 3{
            print("쇼핑을 종료합니다")
            break
        } else {
            print("잘못된 입력입니다")
        }
    }
}

func explainProduct(nation: inout Shop, who: inout Camper) {
    print("""
    \n안녕하세요 \(who.name), \(nation.name) 야곰샵에 오신것을 환영합니다.\n
    """)
    nation.buy(camper: &who)
}

goYagomShop()

