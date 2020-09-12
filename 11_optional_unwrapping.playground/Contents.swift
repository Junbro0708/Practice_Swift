import UIKit

// 옵셔널 추출 방식에는 옵셔널 바인딩과 강제 추출방식이 있다. (옵셔널 방식은 변수안에 또 하나의 상자로 감싸져있다고 생각하면 편함)
// 01. 옵셔널 바인딩 : nil체크를 하는 동시에 안전하게 값을 꺼내올 수 있는 방법 (상자에 값이 있는지 없는지 물어보는 방식)
// 02. 강제 추출 : 옵셔널 상자를 강제로 부셔서 가지고 나오는 방법

func printName(_ name: String) { // 여기서 의미하는 _는 함수를 호출할 때 라벨을 생략하겠다는 의미
    print(name)
}

var myName: String? = nil
//printName(myName) //전달되는 값이 다르기 때문에 컴파일 오류 발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
} // 옵셔널 바인딩

myName = "JunBro"
var yourName: String? = nil

if let me = myName, let friend = yourName { // 이렇게 옵셔널 바인딩을 두 개 한번에 해줄 수 있다.
    print("\(me) and \(friend)")
} else {
    print("Variables have nil")
}

printName(myName!) // 강제 추출 방식으로 두 개의 타입은 엄연히 다르지만, 강제로 맞춰주는 것
// printName(yourName!) // 변수의 값이 nil값이라면 런타임오류 발생

