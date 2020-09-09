import UIKit

/*
 함수의 기본 형태
 func 함수이름 (매개변수이름: 매개변수타입, 매개변수이름: 매개변수타입 ... ) -> 반환타입 {
    함수 구현부
    return 반환값
 }
 */

func Sum(a: Int, b: Int) -> Int {
    return a + b
}

// 반환값이 없는 경우는 반환타입에 Void를 쓰거나 반환타입을 그냥 생략

func printAge(age: Int) -> Void { print("My age is \(age)") }
func prinfName() { print("JunBro") } // 간단한 함수는 줄바꿈을 하지 않고 이렇게 쓸 수 있음
func maxInt() -> Int { return Int.max }

Sum(a: 1, b: 3) // 다른 언어와는 다르게 매개변수를 명시해준 상태에서 값을 부여
printAge(age: 24)
prinfName()
maxInt()
