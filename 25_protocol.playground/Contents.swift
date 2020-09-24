import UIKit

// 프로토콜은 특정 역할을 수행하기 위해서 매서드, 프로퍼티, 이니셜라이저 등을 정의할 수 있는 것
// 구조체, 클래스, 열거형은 프로토콜을 채택해서 요구사항을 실제로 구현할 수 있다.
// 프로토콜의 요구사항을 충족시키려면 프로토콜이 제시하는 기능을 모두 구현해야 한다.

// 쉽게 말하면 구조체, 클래스, 열거형에 너는 이 기능이 꼭 필요하니까 구현해야해! 라고 명시하는 것과 같은 것

/*
 protocol Name {
    code
 }
 */

protocol Talkable {
    // 프로퍼티 요구는 항상 var키워드를 사용해야한다.
    // get은 읽기만 가능하면 되는 것이고, get set이 명시되어있으면 읽기 쓰기가 모두 가능한 프로퍼티여야 한다.
    var topic: String { get set }
    var language: String { get } // 객체지향인 만큼 충분히 구현할 수 있고, 연산 프로퍼티의 경우 읽기 전용만 있기 때문에 명시
    
    func talk()
    
    init(topic: String, language: String)
}

struct Person: Talkable {
    var topic: String // topic은 읽기 쓰기 모두 가능해야하기 때문에 let은 올 수 없다.
    let language: String // language는 읽기만 허용되면 되기 때문에 let var모두 가능하다.
    //var language: String { return "한국어"} // 이렇게 연산 프로퍼티로 읽기 전용으로 만들어줄 수 있음
    
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다.")
    }
    
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}

// 프로토콜은 상속을 받을 수 있고, 클래스와 다르게 다중 상속이 가능하다.
protocol Readable {
    func read()
}
protocol Writeable  {
    func write()
}
protocol ReadWriteSpeakable: Readable, Writeable { // 이렇게 다중 상속이 가능하다.
    func speak()
}

struct SomeType: ReadWriteSpeakable {
    func speak() {
        print("speak")
    }
    func read() {
        print("read")
    }
    func write() {
        print("write")
    }
}
// 만약 클래스라면 상속과 프로토콜을 어떻게 받을 수 있는지?
class SuperClass: Readable {
    func read() {
        print("read")
    }
}
class SubClass: SuperClass, Writeable { // 이렇게 상속받을 클래스가 먼저오고, 그 다음 프로토콜을 받는다(순서가 틀리면 안됨!!)
    func write() {
        print("write")
    }
}

// 프로토콜을 준수하고 있는지 확인하려면, is as연산자를 이용하기
let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()

var someAny: Any = sup
someAny is Readable // true
someAny is ReadWriteSpeakable // false
