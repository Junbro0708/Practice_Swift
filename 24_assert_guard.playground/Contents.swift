import UIKit

// 애플리케이션이 동작 도중에 생성하는 다양한 값들을 동적으로 확인하고 안전하게 처리
// assert 디버깅 중 조건의 검증을 위해 사용, 배포하는 어플리케이션에서는 제외

var someInt: Int = 0

assert(someInt == 0, "someInt != 0!") // 맞으면 그냥 지나치고, 틀리면 오류 발생하며 오른쪽 문자열을 출력

someInt = 1
//assert(someInt == 0, "someInt = 0!") 오류 발생

func functionWithAssert(age: Int?) {
    assert(age != nil, "age == nil")
    
    assert((age! >= 0)&&(age! <= 130), "나이값이 잘못 입력되었습니다.") // 옵셔널타입이기 때문에 느낌표 붙여줘야함
    print("당신의 나이는 \(age!)살 입니다.")
}

functionWithAssert(age: 130)
//functionWithAssert(age: nil) // 검증실패
//functionWithAssert(age: 140) // 검증실패


//Early Exit - guard를 사용하여 실행 구문을 빠르게 종료
//뭔가 트라이 캐치구문 느낌
//guard의 else구문에는 반드시 빠르게 종료시키는 return이나 break구문이 있어야 한다.
func functionWithGuard(age: Int?) {
    guard let unwrappedAge = age,
          unwrappedAge < 130,
          unwrappedAge >= 0 else {
        print("나이값이 잘못 입력되었습니다.")
        return
    }
    print("당신의 나이는 \(unwrappedAge)살 입니다.")
}

functionWithGuard(age: 140)
functionWithGuard(age: 56)

var count: Int = 0

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
