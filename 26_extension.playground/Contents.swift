import UIKit

// 익스텐션은 클래스, 구조체, 열거형, 프로토콜에 새로운 기능을 추가할 수 있는 기능이다.
// 스트링, 인트와 같은 타입만 알고 있다면, 타입의 기능을 확장시킬 수 있다. (생성자, 소멸자 등)

// 익스텐션으로 확장시킬 수 있는 기능 - 연산 프로퍼티, 타입 매서드, 인스턴스 매서드, 이니셜라이저, 프로토콜 준수 등
// 익스텐션은 기존에 존재하는 타입이 추가적으로 다른 프로토콜을 채택할 수 있도록 확장시킬 수 있다.

/* extension 확장할타입이름 {
    
}*/

// 실제로 인트타입에 연산 프로퍼티를 추가해보자
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isOdd)
print(2.isOdd)

var num: Int = 3
print(num.isOdd)
print(num.isEven)

// 이번에는 인트타입에 매서드를 추가해보자
extension Int {
    func multiple(by n: Int) -> Int {
        return self * n
    }
}

print(3.multiple(by: 3))
print(5.multiple(by: 6))
print(num.multiple(by: 4))


