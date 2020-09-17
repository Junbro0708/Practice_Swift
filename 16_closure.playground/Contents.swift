import UIKit

// 코드의 블럭으로 사용이 가능하고 일급 시민이기 때문에, 변수 상수 등으로 저장이 가능하고 전달인자로 전달이 가능

/*{ (매개변수 목록) -> 반환타입 in
    code
}*/

// 우리가 함수를 사용한다면
func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}
var sumResult = sumFunction(a: 1, b: 2)
print(sumResult)

// 클로저를 사용한다면
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
} // 왼쪽 항의 타입명시는 생략해줘도됨. 오른쪽에 명시를 해야하기 때문
sumResult = sum(2, 3)
print(sumResult)

// 클로저는 함수의 일종이기 때문에 클로저형태로 만들어준 변수에 함수를 할당해줄 수 있음
sum = sumFunction(a:b:)
sumResult = sum(3, 5) // 이렇게되면 sumFunction이 호출이 된다
print(sumResult)

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
    return a + b
}
let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a - b
}
let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a / b
}
func caculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var caculated: Int
caculated = caculate(a: 3, b: 5, method: add)
print(caculated)

caculated = caculate(a: 3, b: 5, method: substract)
print(caculated)

caculated = caculate(a: 6, b: 2, method: divide)
print(caculated)

caculated = caculate(a: 10, b: 20, method: {(left: Int, right: Int) -> Int in
    return left * right
})
print(caculated)
