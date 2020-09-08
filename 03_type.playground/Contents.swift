import UIKit

// 스위프트의 기본 데이터 타입 : Bool Int UInt Float Double Character String

// Bool
var someBool: Bool = true // true = 1, false = 0 이지만 다른 언어처럼 0과 1을 넣을 수는 없다.

// Int
var someInt: Int = -100 // 실수를 집어넣으면 오류발생

// UInt 부호가 없는 양의 정수
var someUInt: UInt = 100 // Int와 UInt는 엄연히 다른 타입의 언어

// Float 32비트 부동소수형 타입
var someFloat: Float = 3.14
someFloat = 3 // 정수를 넣어줘도 문제는 없음

// Double 64비트 부동소수형 타입
var someDouble: Double = 3.14
someDouble = 3 // Float와 마찬가지, 하지만 Float와 Double는 다른 타입

// Character
var someCharacter: Character = "3" // 문자열과 같이 큰 따옴표 사용
someCharacter = "가"
someCharacter = "A" // 하지만 한 글자 이상이면 문자열이므로 오류를 표시 이모티콘도 가능

//String
var someString: String = "하하하"
someString = someString + "웃으면 복이 와요" // 문자열과 문자타입도 마찬가지로 엄연히 다른 타입

print(someString)
print(someCharacter)

