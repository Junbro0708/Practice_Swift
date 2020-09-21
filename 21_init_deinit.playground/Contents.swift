import UIKit

// 인스턴스의 생성과 소멸에 관련한 이니셜라이저와 디이니셜라이저
// init, deinit

// 스위프트의 모든 인스턴스는 선언과 동시에 값이 할당되어야 한다.
// 프로퍼티에 미리 기본값을 할당하면, 인스턴스가 생성됨과 동시에 초기값을 지니게 된다.

class Person {
    var name: String = ""
    var age: Int = 0
    var nickName: String = "" // 이렇게 유효한 값을 할당해주어야함
} // 스위프트에서는 이렇게 기본값을 넣어주지 않는다면, 오류가 발생

let junBro: Person = Person()
junBro.name = "Junbro"
junBro.age = 24
junBro.nickName = "Thomas"

// init을 사용하면 기본값을 넣어주지 않아도, 생성이 가능하다.

class PersonA {
    var name: String
    var age: Int
    var nickName: String
    
    init(name: String, age: Int, nickName: String) { // 이니셜라이저 : 생성자와 비슷한 역할
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let thomas: PersonA = PersonA(name: "Thomas", age: 24, nickName: "JunBro")

class PersonB {
    var name: String
    var age: Int
    var nickName: String? // 프로퍼티의 초기값이 필요없을 때에는 옵셔널을 사용한다
    
    convenience init(name: String, age: Int, nickName: String) { // 이니셜라이저 : 생성자와 비슷한 역할
        self.init(name: name, age: age) // 밑의 이니셜라이저를 사용해 코드 단순화 (이럴 경우 convenience키워드 사용)
        self.nickName = nickName
    }
    
    init(name: String, age: Int) { // 이니셜라이저 다중 설정
        self.name = name
        self.age = age
    }
}

let yong: PersonB = PersonB(name: "Yong", age: 23)
let ming: PersonB = PersonB(name: "Mingu", age: 24, nickName: "JotMangGu")

class Puppy {
    var name: String
    var owner: PersonB! // 값을 나중에 할당해주려면 암시적 옵셔널을 사용한다
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("저는 \(name)이고, 주인 \(owner.name)와 산책합니다.")
    }
}

let bbibbi: Puppy = Puppy(name: "BbiBbi")
//bbibbi.goOut() owner를 설정해주지 않고 owner를 사용하는 함수를 사용하면, 런타임 오류가 발생
bbibbi.owner = yong
bbibbi.goOut()

class PersonC {
    var name: String
    var age: Int
    var ninkName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

let john: PersonC? = PersonC(name: "John", age: 34) // init에서 옵셔널 형태를 가질 수 있게 만들었기 때문에 타입을 옵셔널 타입으로 설정해줘야한다
let joker: PersonC? = PersonC(name: "Joker", age: 134)

print(joker?.age) // nil이 출력

// deinit은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출된다.
// 인스턴스가 해제되는 시점에서 해야할 일을 구현할 수 있다.

class PersonD {
    var name: String
    var pet: Puppy?
    var child: PersonB
    
    init(name: String, child: PersonB) {
        self.name = name
        self.child = child
    }
    
    deinit { // 클래스 타입에만 구현이 가능하다. 또한 소멸자는 매개변수를 가질 수 없다.
        if let petName = pet?.name {
            print("\(name)이 \(child.name)에게 \(petName)을 양도합니다.")
            self.pet?.owner = child
        }
    }
}

var donald: PersonD? = PersonD(name: "Donald", child: yong)
donald?.pet = bbibbi
donald = nil
