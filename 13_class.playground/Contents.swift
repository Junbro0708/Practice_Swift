import UIKit

// 클래스는 구조체와 매우 유사한 기능을 가지고 있는데, 구조체는 값 타입인 반면에, 클래스는 참조 타입
// 스위프트의 클래스는 다중 상속이 가능하지 않다.

//class name {
//    code
//}

class Sample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100 // 구조체 안에서의 변수는 프로퍼티라고 한다.
    
    static var typeProperty: Int = 100 // static이 붙어있는 프로퍼티는 타입 프로퍼티로 구조체 내부에서 사용할 수 있는 변수라고 생각하면 된다.
    
    func intanceMethod() { // 구조체 안에 들어있는 함수를 매서드라고 할 수 있다.
        print("intacne Method")
    }
    
    // 클래스는 구조체와 다르게 두 가지의 타입 매서드가 존재한다.
    static func typeMethod() {
        print("type Method - static") // 상속을 받았을 때, 재정의가 불가능한 매서드
    }
    class func classMethod() {
        print("type Method - class") // 상속을 받았을 때, 재정의가 가능한 매서드
    }
}

// 클래스 사용

var mutableReference: Sample = Sample()
let immutableReference: Sample = Sample()

mutableReference.mutableProperty = 200
immutableReference.mutableProperty = 200 // 구조체와 또다른 점은 let이든 var든 var속성의 프로퍼티를 바꿔줄 수 있음 (let 프로퍼티는 불가능)

class Student {
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

var Junbro: Student = Student()
Junbro.name = "Thomas"

let HW: Student = Student()
HW.name = "Yong" // 구조체와 다른 점
