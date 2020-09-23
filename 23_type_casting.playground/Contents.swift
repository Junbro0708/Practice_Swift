import UIKit

// 스위프트의 타입캐스팅은 인스턴스의 타입을 확인하는 용도로 쓰인다.
// 추가로 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인한다.
// is as

let someInt: Int = 101
let someDouble: Double = Double(someInt) // 다른 언어에서의 타입캐스팅은 이렇게 생각할 수 있지만, 스위프트에서 이것은 단지 하나를 더 만드는 것일 뿐이다.

// 스위프트에서의 타입캐스팅

class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다.")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다.")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("MT가자!")
    }
}

var park: Person = Person()
var jun: Student = Student()
var hyeong: UniversityStudent = UniversityStudent()

// is 타입 확인 연산자
var result: Bool
result = park is Person
result = park is Student
result = park is UniversityStudent

result = hyeong is Person
result = hyeong is Student
result = hyeong is UniversityStudent

if park is Person {
    print("park is human")
}

switch jun {
case is Person:
    print("jun is human")// 순서대로 트루 값이 나오면 빠져나옴 고로 밑에거도 맞지만, 출력 x
case is Student:
    print("jun is student")
}

// as 업캐스팅
// as를 사용하여 부모클래스의 인스턴스를 활용할 수 있도록 타입정보를 전환

var mike: Person = UniversityStudent() as Person
var jina: Any = Person() // Any는 어떤 타입도 들어올 수 있다.

// as? 조건부 다운캐스팅 as! 강제 다운캐스팅 다운캐스팅
// 자식 클래스의 인스턴스로 사용할 수 있도록 타입 정보를 전환

var optionalCasted: Student?
optionalCasted = mike as? UniversityStudent
