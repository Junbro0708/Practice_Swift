import UIKit

// 매개 변수 기본값 - 매개 변수의 뒤쪽 부터 인자를 채우는 것이 좋다.
func greeting(name: String, age: Int = 24) -> Void {
    print("Hi! I'm \(name), and \(age) years old : )")
}

greeting(name: "JunBro") // 생략이 가능하다.
greeting(name: "JunBro", age: 23)

// 전달 인자 레이블 - 매개 변수 앞에 또 하나의 변수를 설정하는 것으로 전달 인자 레이블은 1. 함수를 호출할 때 2. 매개변수의 역할을 조금 더 명확하게 할 때 3. 함수 사용자의 입장을 표현할 때 사용한다. 또한 함수 내부에서는 꼭 매개변수를 , 외부에서는 꼭 전달인자 레이블을 사용해야 한다.
func greeting2(first name: String,  last age: Int = 24) -> Void {
    print("Hi! I'm \(name), and \(age) years old : )")
}

greeting2(first: "Thomas", last: 23) // 전달인자 레이블을 사용하면 함수를 호출할 때 매개변수가 아닌 레이블을 사용해야 한다.

// 가변 매개변수 - 매개 변수의 개수가 몇 개인지 알 수 없으면 가변 매개변수를 사용하면 된다. 가변 매개변수는 함수당 하나를 가질 수 있고, 뒤쪽에 위치해 주는 것이 좋다.
func infoBud(me: String, buddy: String...) { // 가변 매개변수는 다른 타입으로 적용
    print("Hi! my name is \(me), and my buddies are \(buddy)")
}
infoBud(me: "Thomas", buddy: "HW", "JH", "JW")
infoBud(me: "Thomas") // 가변 매개변수는 매개변수의 개수를 알기 어려운 만큼 호출할 때 생략을 해줄 수 있다.

// 스위프트는 함수형 프로그래밍 언어로서 함수가 1급 객체로 적용 - 변수 상수 등에 저장이 가능하고, 매개변수를 통해 전달도 가능하다.
var someFunc: (String, Int) -> Void = greeting2(first:last:) // 왼쪽 항을 보면 매개변수의 타입과 반환 타입을 써준 것이고, 오른쪽 항을 보면 변수에 함수를 넣어준 것
someFunc("MJ", 21)
someFunc = greeting(name:age:)
someFunc("JJ", 19)

// 매개변수로의 함수 적용
func runAnother(funct: (String, Int) -> Void) {
    funct("GG", 99)
}

runAnother(funct: someFunc)
runAnother(funct: greeting2(first:last:))
