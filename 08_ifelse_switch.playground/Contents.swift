import UIKit

let num: Int = 100

if (num > 100) { // 스위프트의 조건문은 항상 Bool타입의 값이 들어와야 하기 때문에 명심!
    print("100 초과")
}else if num == 100 { // 이렇게 소괄호를 생략해줄수도 있음
    print("100")
}else {
    print("100 이하")
} // 다른 언어와 마찬가지로 else if와 else 혼합 사용이 가능


// switch 조건문 - break를 명시적으로 써줄 필요가 없고, 대신 defalut값을 꼭 써주어야 한다.
/* switch value(값) {
   case pattern:
        code
   defalut:
        code
 }
 */

// 스위프트에 범위연산자가 등장을 하는데 ..< 을 써서 범위를 나타내줄 수 있다

switch num {
case 0:
    print("0")
case 1..<100: // 반 개방 범위 연산자 1..<100 이면 1,2...98,99 출력
    print("1~99")
case 100:
    print("100")
case 100...Int.max: // 닫힘 범위 연산자 1...4면 1,2,3,4 출력
    print("over 100")
default:
    print("unknown")
}
