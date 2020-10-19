import UIKit

// 스위프트에서의 고차 함수는 매우 유용하게 사용될 수 있다.
// 전달 인자로 함수를 전달받거나 함수를 반환하는 함수
// map filter reduce

// 맵은 콜렉션 내부의 기존 데이터를 변형하여 새로운 콜렉션을 생성한다.
let num: [Int] = [0, 1, 2, 3, 4] // Int 타입의 배열 생성
var doubleNum: [Int] // 두배로 변형시킬 배열
var strings: [String] // 문자열로 변형시킬 배열

doubleNum = [Int]()
strings = [String]()

for i in num {
    doubleNum.append(i * 2)
    strings.append("\(i)")
}
print(doubleNum)
print(strings)

// map을 사용하면 이렇게 번거롭게 작성하지 않고, 한번에 작성이 가능하다.
doubleNum = num.map({ (i: Int) -> Int in // num의 각 요소를 2배하여 새로운 배열을 반환하는 코드
    return i * 2
})
print(doubleNum)
strings = num.map({(i: Int) -> String in // map은 클로저가 들어간다.
    return "\(i)"
})
print(strings)

// filter는 요소를 검색해서 맞는 요소만 새로운 컨테이너로 만들어주는 매서드
var filtered: [Int] = [Int]()

for i in num {
    if i % 2 == 0 {
        filtered.append(i)
    }
}
print(filtered)
// filter 사용
let evenNum: [Int] = num.filter { (i: Int) -> Bool in
    return i % 2 == 0 // 조건을 써주고 이 조건에 맞으면 리턴
}
print(evenNum)

let oddNum: [Int] = num.filter {$0 % 2 != 0} // 맵과 필터 모두 후행 클로저를 사용하면 한줄만으로 표현할 수 있다.
print(oddNum)

// reduce는 컨테이너 내부의 요소를 하나로 통합하는 매서드
let someNum: [Int] = [2, 5, 18]
var result: Int = 0

for i in someNum {
    result += i
}
print(result)

// reduce 매서드 사용한다.
let sum: Int = someNum.reduce(0, { // 초기값을 0으로 먼저 지정해주고,
    (first: Int, second: Int) -> Int in // 모두 더해줄 것이다라는 것을 써줌
    return first + second
})
let sum2: Int = someNum.reduce(2) {$0 + $1} // 마찬가지로 후행클로저로 표현이가능
print("\(sum), \(sum2)")

let substract: Int = someNum.reduce(0, { // 초기값을 0으로 먼저 지정해주고,
    (first: Int, second: Int) -> Int in // 모두 더해줄 것이다라는 것을 써줌
    return first - second
})
