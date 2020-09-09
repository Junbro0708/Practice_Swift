import UIKit

/*
 Any : 스위프트의 모든 타입을 지칭하는 키워드
 AnyObject : 스위프트의 모든 클래스 타입을 지칭하는 프로토콜
 nil : null과 비슷한 개념으로 없음을 나타내는 키워드
 */

var someAny: Any = 100
someAny = "모든 타입을 지칭하기 때문에 문자열을 넣어줄 수도 있음"
someAny = 12.34 // 마찬가지로 더블형태도 넣을 수 있다.

// let someDouble: Double = someAny // 오류가 발생하는데 Any에 더블값을 넣는다고 더블 타입의 변수에 할당할 수 있는 것은 아님

class Someclass{
    var name: Any = "박준형"
}
var someAnyObject: AnyObject = Someclass()

//someAny = nil // Any 타입은 어떤 것도 들어올 수 있지만 빈 값은 들어갈 수 없다.
//someAnyObject = nil // 마찬가지로 들어갈 수 없다.

dump(someAnyObject)
