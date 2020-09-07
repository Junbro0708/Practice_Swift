import UIKit

var age: Int = 10 // var은 값을 수정할 수 있는 변수이고
let name: String = "박준형" // val은 한번 값을 초기화하면, 값을 바꿀 수 없는 변수이다.

//print와 dump로 출력할 수 있고, dump는 인스턴스를 조금 더 자세하게 출력해준다. (클래스의 모든 인스턴스를 출력할 때 용이)
print("안녕하세요 저는 \(age + 14)살이고, 이름은 \(name)입니다.")

class Info {
    var name: String = "박준형"
    var age: Int = 24
}

let Thomas: Info = Info()

print(Thomas)

dump(Thomas)
