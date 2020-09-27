import UIKit

// 스위프트에서 오류를 처리하는 방법은 Error 프로토콜을 사용하고 열거형을 통해 에러를 표현한다.

/*enum 오류종류이름: Error {
    case 종류1
    case 종류2
    case 종류3
}*/

enum VendingMachineError: Error {
    case invalidInput
    case inSufficientFends(MoneyNeeded: Int)
    case OutofStock
} // 예를들어 이렇게 자판기에서 나올 수 있는 오류를 명시해놓는다.

// 오류를 어떻게 발생시키냐면, 함수를 사용해 오류를 던져준다. -> throws
class VendingMachine {
    let itemPrice: Int = 100
    var itemCount: Int = 5
    var deposited: Int = 0
    
    // 돈을 받는 매서드
    func receiveMoney(_ money: Int) throws { // throws를 써주는 이유는 오류가 발생할 수 있다는 것을 미리 알려주는 것
        // 돈이 0 이하라면 오류를 던진다.
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        // 오류가 없으면 정상적으로 처리한다.
        self.deposited += money
        print("\(money)원을 받았습니다.")
    }
    
    func vend(numberOfItems numberOfItemsToVend: Int) throws -> String {
        
        // 원하는 아이템 수량이 잘못 입력되었으면 오류를 던지는 코드
        guard numberOfItemsToVend > 0 else {
            throw VendingMachineError.invalidInput
        }
        // 구매하려는데 들어간 금액이 사려는 금액보다 적을때
        guard numberOfItemsToVend * itemPrice  <= deposited else {
            let moneyNeeded: Int
            moneyNeeded = numberOfItemsToVend * itemPrice - deposited
            throw VendingMachineError.inSufficientFends(MoneyNeeded: moneyNeeded)
        }
        // 물건이 모자를때
        guard itemCount >= numberOfItemsToVend else {
            throw VendingMachineError.OutofStock // throw는 오류를 던지고 매서드를 끝내는거라 반환 타입이 중요하지는 않음
        }
        
        // 오류가 없으면 정상처리
        let totalPrice = numberOfItemsToVend * itemPrice
        self.deposited -= totalPrice
        self.itemCount -= numberOfItemsToVend
        
        return "\(numberOfItemsToVend)개가 제공되었습니다."
    }
}

let machine: VendingMachine = VendingMachine() // 자판기 인스턴스 생성
var result: String? // 판매 결과를 전달받을 변수

// 오류 발생의 여지가 있는 throw매서드는 try를 사용하여 호출해야한다.
// do-catch문도 함께 사용하는 것이 좋다.
// try try? try!

do {
    try machine.receiveMoney(0)
}catch VendingMachineError.invalidInput{
    print("입력이 잘못되었습니다.")
}catch VendingMachineError.inSufficientFends(let moneyNeeded) {
    print("\(moneyNeeded)원이 부족합니다.")
}catch VendingMachineError.OutofStock {
    print("수량이 잘못되었습니다.")
}

// 캐치를 계속 쓰기 번거로울 때에는 switch 구문으로 작성할 수 있다.
do {
    try machine.receiveMoney(0)
}catch /*(let error)이 암시적으로 들어감 / 변수를 바꿔줘야할 때에는 error을 바꿔주면 됨*/ {
    switch error {
    case VendingMachineError.invalidInput:
        print("입력이 잘못되었습니다.")
    case VendingMachineError.inSufficientFends(let moneyNeeded):
        print("\(moneyNeeded)원이 부족합니다.")
    case VendingMachineError.OutofStock:
        print("수량이 잘못되었습니다.")
    default:
        print("알 수 없는 오류")
    }
}

// 이게 귀찮고, 오류가 나도 그냥 그대로 실행하면 될 경우 그냥 do만 사용한다.
do {
    result = try machine.vend(numberOfItems: 4)
}catch {
    print(error)
} // infufficientFunds(100)

do {
    result = try machine.vend(numberOfItems: 4)
}

// try?는 별도의 오류 통지를 받지 않고, 오류가 발생하면 nil값으로 돌려받는 것, 정상 동작이면 옵셔널타입으로 반환값을 돌려받는다.
result = try? machine.vend(numberOfItems: 2)
result // 2개 제공함

result = try? machine.vend(numberOfItems: 2)
result // nil

// try!는 오류가 발생하지 않는다고 확신할 때 사용하는 것, 정상작동 후에 바로 결과값을 돌려받는다.
// 하지만 오류가 발생하면 런타임에러가 발생하고, 애플리케이션이 중지된다.

result = try! machine.vend(numberOfItems: 1)
result
