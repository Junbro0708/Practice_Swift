import UIKit

// 클로저를 조금 더 손쉽게 표현할 수 있는 방법
// 매우 다양한 문법들이 존재하기 때문에, 남들이 이해하는 선에서 축약하는 것이 좋음

func calculated(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}


var result: Int = calculated(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
} // 후행 클로저
print(result)
/*
result = caculated(a: 10, b: 20, method: {(left: Int, right: Int) -> Int in
    return left * right
})
*/ // 원래는 이렇게 쓸 수 있지만, 복잡하기 때문에 분리해서 사용할 수 있음

result = calculated(a: 10, b: 20, method: {(left: Int, right: Int) in
    return left * right
}) // 매서드에 클로저를 생성해준다면 반환타입을 알기 때문에 생략이 가능하다
print(result)

result = calculated(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
} // 후행 클로저에도 반환 타입을 생략해줄 수 있다
print(result)

// --------------------------------------------- 더 축약해서, 매개변수의 이름까지 생략할 수 있다 : 단축 인자이름
result = calculated(a: 20, b: 30, method: {
    return $0 + $1
})
print(result)

result = calculated(a: 10, b: 10) {
    return $0 * $1
}
print(result)

// --------------------------------------------- 더 축약해서, return 문구까지 생략할 수 있다 : 암시적 반환 표현

result = calculated(a: 20, b: 30, method: { $0 + $1 })
print(result)

result = calculated(a: 10, b: 10) { $0 * $1 }
print(result)
// 컴파일러는 쉽게 알아듣지만, 적당히 줄이기
