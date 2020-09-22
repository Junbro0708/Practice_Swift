import UIKit

// 옵셔널 체이닝이란 구조체나 클래스 내부에 또다른 객체가 들어갈 때, 옵셔널 검사를 효과적으로 하는 것
// 옵셔널이 연속적으로 사용되는 경우 유용하게 사용할 수 있다.

class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNum: Int
    var roomNum: Int
    var `guard`: Person?
    var owner: Person?
    
    init(dong: Int, ho: Int) {
        buildingNum = dong
        roomNum = ho
    }
}

let junBro: Person? = Person(name: "JunBro")
let apart: Apartment = Apartment(dong: 104, ho: 405)
let yong: Person? = Person(name: "Yong")

func guardOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job { // 옵셔널 체이닝을 사용한 것으로 계속 밑으로 내려가 탐색
        print("경비원의 직업은 \(guardJob)입니다.")
    }else {
        print("경비원의 직업은 경비원입니다.")
    }
}

guardOptionalChaining(owner: junBro)

junBro?.home = apart
junBro?.home?.guard = yong
junBro?.home?.guard?.job = "가수"

guardOptionalChaining(owner: junBro)

// nil 병합 연산자
var guardJob: String = junBro?.home?.guard?.job ?? "슈퍼맨" // 우측항의 값이 nil값이라면 ?? 오른쪽 값을 할당해주라 nil이 아니라면 그 값을 넣고 ㅇㅇ
print(guardJob)

junBro?.home?.guard?.job = nil

guardJob = junBro?.home?.guard?.job ?? "슈퍼맨"
print(guardJob)
