import UIKit

// 스위프트의 열거형은 다른 기존의 언어와 다르게 매우 강력한 기능을 가지고 있다.
// enum은 타입으로 대문자 사용, 밑의 케이스는 소문자를 사용한다. (카멜케이스)
// case는 각각의 값이 모두 고유의 값이 된다.

enum Weekday {
    case mon
    case tue
    case wed // 이렇게 한 줄에 하나의 케이스를 넣어줘도 되고
    case thu, fri, sat, sun // 이렇게 여러 개의 케이스를 한 줄에 선언을 해줘도 된다.
}

var today: Weekday = Weekday.mon // 선언하는 법
today = .tue // 위에서 Weekday라는 타입으로 만들어줬기 때문에 이렇게 축약하여 쓸 수 있다.

print(today)

switch today {
case .mon, .tue, .wed, .thu:
    print("평일이니까 열심히 공부하자!")
case .fri:
    print("신나는 불금 제대로 즐기자!!")
default:
    print("주말이니 휴식을 취하자!")
}

enum Fruit: Int { // c언어와 같이 원시값을 넣어줄 수도 있다.
    case apple = 0
    case grape = 1
    case peach // 이렇게 정수값을 지정하지 않아도, 위의 값에 따라 자동으로 1이 증가하게된다. 고로 peach는 2
    //case mango = 0 값이 중복이면 오류발생
}

print("\(Fruit.apple.rawValue)") // 이렇게 값을 꺼내올 수 있음

enum Student: String {
    case elementary = "초딩"
    case middle = "중딩"
    case high = "고딩"
    case college
    
    func printStu() { // 열거형에서의 함수를 만드는 방법
        switch self {
        case .elementary, .middle, .high:
            print("미성년자입니다.")
        case .college:
            print("성인입니다.")
        }
    }
} // String타입도 가능하고, Hashable 프로토콜을 따르는 모든 타입을 사용할 수 있다.

print("\(Student.middle.rawValue)")
print("\(Student.college.rawValue)") // 이렇게 값이 들어있지 않은 경우, 케이스의 이름이 로우 밸류값으로 지정
Student.college.printStu() // 열거형 안에 매서드를 호출하는 법

//---------------------------------------- rawValue 를 일반 타입에서 사용하는 법

let apple: Fruit? = Fruit(rawValue: 0) // 케이스의 로우 밸류값이 없으면 생성이 되지 않기 때문에, 옵셔널 타입으로 선언해줘야 한다.

if let orange: Fruit = Fruit(rawValue: 5) {
    print("\(orange)")
} else {
    print("해당 케이스가 없습니다.")
}
