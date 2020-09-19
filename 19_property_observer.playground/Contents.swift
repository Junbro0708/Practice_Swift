import UIKit

// 프로퍼티 감시자를 사용하면, 프로퍼티가 바뀔 때 원하는 동작을 수행할 수 있다.

struct Money {
    var currencyRate: Double = 1100 { // 저장 프로퍼티의 값이 변경이될 때,
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)로 바뀔 예정입니다.")
        } // currencyRate가 바뀌기 직전에 호출
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)로 바꼈습니다.")
        } // 바뀌고 나서 호출
    }
    
    var dollor: Double = 0 { // 프로퍼티 감시자를 사용할 때, 매개변수를 적어주지 않으면 암시적으로 newValue와 oldValue가 호출
        willSet {
            print("\(dollor)에서 \(newValue)로 바뀔 예정입니다.")
        }
        didSet {
            print("\(oldValue)에서 \(dollor)로 바꼈습니다.")
        }
    }
    
    // 또한, 프로퍼티 감시자는 연산 프로퍼티와 같이 사용할 수 없다.
        
}

var moneyPocket: Money = Money()
moneyPocket.currencyRate = 1150
moneyPocket.dollor = 10

// 프로퍼티 감시자는 연산 프로퍼티처럼 지역변수, 전역변수 모두에 사용이 가능하다.
