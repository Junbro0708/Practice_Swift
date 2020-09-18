import UIKit

/*
 프로퍼티는 종류에 따라, 저장 프로퍼티, 연산 프로퍼티, 인스턴스 프로퍼티, 타입 프로퍼티로 나눌 수 있다.
 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있다. (다만, 열거형 내부에는 연산 프로퍼티만 구현이 가능)
 연산 프로퍼티는 var로만 선언이 가능하다.
 */

struct Student {
    
    var name: String = "JunBro"
    var `class`: String = "Swift"
    var koreanAge: Int = 24 // 인스턴스 저장 프로퍼티 (기존에 알고있던 프로퍼티는 거의 저장 프로퍼티이다.)
    
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        set(inputValue) {
            koreanAge += 1
        }
    } // 인스턴스 연산 프로퍼티로 값을 가져오거나 설정할 때
    
    var selfIntroduction: String {
        get {
            return "저는 \(name)이고, \(`class`)반, \(koreanAge)살 입니다."
        }
    } // get만 설정을 해놓으면 읽기 전용 연산프로퍼티이다. (연산 프로퍼티는 읽기전용과 읽기, 쓰기 프로퍼티 두개로 나뉘어진다. 쓰기전용은 없음)
    
    static var selfIntroduction: String {
        get {
            return "학생입니다."
        }
    }
}

print(Student.selfIntroduction)

var JunBro: Student = Student()
JunBro.koreanAge = 24

print(JunBro.westernAge)

struct Currency {
    var currencyRate: Double = 1100
    var dollor: Double = 0
    var won: Double {
        get {
            return dollor * currencyRate
        }
        set {
            dollor = newValue / currencyRate
        } // 특별히 매개변수이름을 써주지 않으면 뉴밸류로 써줌
    }
}

var pocket: Currency = Currency()
pocket.won = 11000
print(pocket.dollor)
pocket.dollor = 23
print(pocket.won)

// 저장 프로퍼티와 연산 프로퍼티는 지역/전역 변수 모두에서 사용이 가능하다.
var a: Int = 2
var b: Int = 5
var sum: Int {
    return a + b
} // 연산 변수를 만들 수 있다.
print(sum)
