struct Character {
    var hp: Int = 100
    var mp: Int = 100
    var skill1: () -> Void
    var skill2: () -> Void
    var skill3: () -> Void
    
    func tabShiftKey(skill: () -> Void) {
        skill()
    }
}

var uemu = Character {
    print("너 가만안둬")
    uemu.mp -= 20
} skill2: {
    print("나죽어")
    uemu.hp -= 50
} skill3: {
    print("아 힐링된다.")
    uemu.hp += 30
}

uemu.tabShiftKey(skill: uemu.skill1)
uemu.tabShiftKey(skill: uemu.skill2)
uemu.tabShiftKey(skill: uemu.skill3)

var arrayTest: [Int] = [1, 2, 3, 4, 5, 6]

print(arrayTest.map { $0 * 2 })
// 각 요소들을 지정된 클로저로 변환시켜 새 배열 리턴

print(arrayTest.filter { $0 % 2 == 0 })
// 클로저 조건에 맞는 요소들을 필터링해서 리턴

print(arrayTest.reduce(0, +))
// 클로저를 통해 각 요소를 결합한 결과 리턴


extension Array {
    func myMap(_ transform: (Element) -> Element) -> Self {
        var result: [Element] = []
        
        for item in self {
            result.append(transform(item))
        }
        
        return result
    }
    
    func myFilter(_ transform: (Element) -> Bool) -> [Element] {
        var result: [Element] = []
        
        for item in self {
            if transform(item) {
                result.append(item)
            }
        }
        
        return result
    }
    
    func myReduce<Result>(
        _ initialResult: Result,
        _ nextPartialResult: (Result, Self.Element) -> Result
    ) -> Result {
        var result: Result = initialResult
        
        for item in self {
            result = nextPartialResult(result, item)
        }
        
        return result
    }
}
