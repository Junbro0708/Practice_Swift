import UIKit

/*
 스위프트에서의 상속은 클래스와 프로토콜 등에서 가능하다. (열거형, 구조체는 상속이 불가능하다.)
 또한, 스위프트에서의 클래스는 단일 상속이기 때문에 다중 상속이 불가능하다.
 */

/* class 이름: 부모 클래스 이름 {
    code
} */

class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("My name is \(name).")
    }
    
    final func sayHello() {
        print("Hello")
    } // final이라는 키워드를 사용해서 재정의를 방지할 수 있다. (let과 같은 느낌) : 자식 클래스에서 매서드를 재정의할 수 없음
    
    // 타입매서드 클래스 내부에서 사용할 수 있는 매서드이다 - static, class
    static func typeMethod() {
        print("type method - static")
    } // 자식 클래스에서 재정의가 불가능한 매서드
    class func classMethod() {
        print("class method - class")
    } // 자식 클래스에서 재정의가 가능한 매서드
    final class func finalMethod() {
        print("final method - final")
    } // 자식 클래서에서 재정의가 불가능한 매서드 (static과 같은 역할을 한다.)
}

class Student: Person {
   // var name: String = "" 상속을 받았기 때문에 정의 x, 저장 프로퍼티는 상속을 받은 후 오버라이드를 할 수 없음. 재정의 불가
    var major: String = ""
    
    override func selfIntroduce() {
        print("My name is \(name), and my major is \(major)")
        super.selfIntroduce() // super 키워드를 사용하면 부모 클래스의 매서드를 호출한다.
    }
    override class func classMethod() {
        print("Overriden type method - class")
    } // 클래스 매서드 또한 재정의가 가능하다.
}

let yagom: Person = Person()
let junBro: Student = Student()

yagom.name = "Yagom"
junBro.name = "Thomas"
junBro.major = "Swift"

yagom.selfIntroduce()
junBro.selfIntroduce()

Person.classMethod()
Person.finalMethod()
Person.typeMethod()

Student.classMethod()
Student.finalMethod()
Student.typeMethod()
