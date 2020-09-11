import UIKit

// optional의 개념 : 값이 있을수도 있고, 없을수도 있다.
// 옵셔널이 필요한 이유 : 예외 상황을 최소화할 수 있는 안전한 코딩이 가능, 문서, 주석 작성의 시간을 절약 (nil이 아니라는 것을 안 써줘도 됨), 효율적인 코딩(전달받은 값이 옵셔널이 아니라면 nil 체크를 굳이 하지 않아도 됨)

let optionalValue: Int? = nil // 옵셔널 값
//let optionaValue: Int = nil 컴파일 오류

// 옵셔널을 표현할 때에는 ?와 !를 사용한다.

var optionalInt: Int! = 100 // !는 암시적 추출 옵셔널
switch optionalInt {
case .none:
    print("This is optional value is nil") // 값이 nil이면 실행
case .some(let value):
    print("Value is \(value)") // nil이 아니면 실행
}

var optionalDouble: Double! = 100 // ?는 일반적인 옵셔널으로, nil값이 있을수도 있고, 없을수도 있다는 뜻 (!는 다른 변수와 일반적인 연산이 가능하지만, ?는 다른 변수와 일반적 연산이 불가능하다.)
switch optionalInt {
case .none:
    print("This is optional value is nil") // 값이 nil이면 실행
case .some(let value):
    print("Value is \(value)") // nil이 아니면 실행
}
