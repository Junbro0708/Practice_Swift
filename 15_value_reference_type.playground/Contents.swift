import UIKit

// Class, struct, enum : 클래스만 상속이 가능하고, 나머지는 불가능하다.
// 또한, Extension기능을 모두 사용할 수 있다.
// 값 타입(열거형, 구조체)은 데이터를 전달할 때, 값을 복사하여 전달하고, 참조 타입(클래스)은 메모리 위치를 전달한다.

// Class를 두고 struct를 사용할 때에는, 참조 타입이 아닌 값 타입이기 때문에 참조가 아닌 복사를 원할 때 사용하고, 상속할 필요가 없거나 상속받을 필요가 없을 때 사용한다.
// 애플 프레임워크에서는 주로 클래스를 많이 사용

// Class 참조 vs Struct, Enum 값

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStruct = ValueType()
var secondStruct = firstStruct
secondStruct.property = 2

print("\(firstStruct)") // 1
print("\(secondStruct)") // 2

let firstClass = ReferenceType()
var secondClass = firstClass
secondClass.property = 2

print("\(firstClass.property)") // 2
print("\(secondClass.property)") // 2 : 메모리의 위치가 복사되는 것이기 때문에 값이 같이 바뀜
