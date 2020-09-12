import UIKit

// 스위프트에서는 대부분의 타입이 구조체로 이루어져있을 정도로 중요함
// 구조체는 새로운 타입을 만들어주는 것으로 선언을 기존의 타입 선언과 비슷하게 해줄 수 있음

//struct Sample {
//    code
//}

struct Sample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100 // 구조체 안에서의 변수는 프로퍼티라고 한다.
    
    static var typeProperty: Int = 100 // static이 붙어있는 프로퍼티는 타입 프로퍼티로 구조체 내부에서 사용할 수 있는 변수라고 생각하면 된다.
    
    func intanceMethod() { // 구조체 안에 들어있는 함수를 매서드라고 할 수 있다.
        print("intacne Method")
    }
    
    static func typeMethod() {
        print("type Method")
    }
}

// 구조체 사용
var mutable: Sample = Sample()
// 선언을 var로 해주면 내부의 가변 프로퍼티를 변경해줄 수 있지만, let으로 선언해주면 변경이 불가능하다. (구조체 내부의 불변 프로퍼티는 수정 x)
mutable.mutableProperty = 200

Sample.typeProperty = 300
Sample.typeMethod() // static으로 선언한 타입 프로퍼티와 매서드는 이렇게 타입 자체에서 사용할 수 있다.

// mutable.typeProperty // 이렇게 오류 발생

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift" // 강세표를 붙이는 이유는 class 자체가 스위프트 내부의 타입이기 때문
    
    static func selfIntroduce() {
        print("Student type")
    }
    
    func selfIntroduce() {
        print("저는 \(name)이고, \(`class`)반입니다.")
    }
}

Student.selfIntroduce()

var JunBro: Student = Student()

JunBro.name = "Thomas"
JunBro.class = "Swift Function"
JunBro.selfIntroduce()
