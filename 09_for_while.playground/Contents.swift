import UIKit

var integers = Array<Int>()
integers.append(1)
integers.append(2)
integers.append(3)

var people = Dictionary<String, Int>()
people["JunBro"] = 24
people["Thomas"] = 23
people["Yong"] = 22

// for in 문은
/*
 for 아이템 in 아이템s {
    code
 }
 
 딕셔너리의 경우에는 아이템 자리에 튜플 형태로 들어간다
 */

for num in integers {
    print(num)
}
for (name, age) in people {
    print("Hi my name is \(name), and \(age)years old!!")
}
for i in 1...10 {
    print(i)
}

// while 문
/*
 다른 언어와 다를 바 없음 다만 조건문 안에는 다른 언어처럼 숫자값이 아닌 무조건 Bool값이 들어가야한다.
 while(조건문) { // 다른 스위프트의 조건문 처럼 소괄호는 생략가능
    code
 }
 */

while integers.count > 1 {
    integers.removeLast()
}

// repeat - while문
/*
 다른 언어의 do while과 같은 구문이지만, 스위프트에서는 do라는 키워드가 오류처리에서 사용되기 때문에 repeat을 써준다.
 repeat{
    code
 }while 조건
 */

repeat{
    integers.removeLast()
}while integers.count > 1
